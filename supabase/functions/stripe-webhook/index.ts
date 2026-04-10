// supabase/functions/stripe-webhook/index.ts
// Listens for Stripe events and updates the user's plan in Supabase.
// Register this URL in your Stripe webhook dashboard.

import Stripe from 'https://esm.sh/stripe@14.21.0?target=deno';
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2';

const stripe = new Stripe(Deno.env.get('STRIPE_SECRET_KEY')!, {
  apiVersion: '2024-04-10',
  httpClient: Stripe.createFetchHttpClient(),
});

const supabaseAdmin = createClient(
  Deno.env.get('SUPABASE_URL')!,
  Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
);

Deno.serve(async (req) => {
  const signature = req.headers.get('stripe-signature');
  if (!signature) {
    return new Response('Missing stripe-signature header', { status: 400 });
  }

  // Verify the webhook came from Stripe
  const body = await req.text();
  let event: Stripe.Event;

  try {
    event = await stripe.webhooks.constructEventAsync(
      body,
      signature,
      Deno.env.get('STRIPE_WEBHOOK_SECRET')!
    );
  } catch (err) {
    console.error('Webhook signature verification failed:', err.message);
    return new Response(`Webhook error: ${err.message}`, { status: 400 });
  }

  console.log('Stripe event:', event.type);

  try {
    switch (event.type) {

      // Payment succeeded — upgrade to Pro
      case 'checkout.session.completed': {
        const session = event.data.object as Stripe.Checkout.Session;
        const uid = session.metadata?.supabase_uid;
        if (!uid) throw new Error('No supabase_uid in session metadata');

        await supabaseAdmin
          .from('profiles')
          .update({ plan: 'pro' })
          .eq('id', uid);

        console.log(`Upgraded user ${uid} to pro`);
        break;
      }

      // Subscription renewed — keep pro
      case 'invoice.payment_succeeded': {
        const invoice = event.data.object as Stripe.Invoice;
        const customerId = invoice.customer as string;

        const { data: profile } = await supabaseAdmin
          .from('profiles')
          .select('id')
          .eq('stripe_customer_id', customerId)
          .single();

        if (profile) {
          await supabaseAdmin
            .from('profiles')
            .update({ plan: 'pro' })
            .eq('id', profile.id);
          console.log(`Renewed pro for customer ${customerId}`);
        }
        break;
      }

      // Subscription cancelled or payment failed — downgrade to free
      case 'customer.subscription.deleted':
      case 'invoice.payment_failed': {
        const obj = event.data.object as Stripe.Subscription | Stripe.Invoice;
        const customerId = (obj as any).customer as string;

        const { data: profile } = await supabaseAdmin
          .from('profiles')
          .select('id')
          .eq('stripe_customer_id', customerId)
          .single();

        if (profile) {
          await supabaseAdmin
            .from('profiles')
            .update({ plan: 'free' })
            .eq('id', profile.id);
          console.log(`Downgraded customer ${customerId} to free`);
        }
        break;
      }

      default:
        console.log(`Unhandled event type: ${event.type}`);
    }

    return new Response(JSON.stringify({ received: true }), {
      headers: { 'Content-Type': 'application/json' },
    });

  } catch (err) {
    console.error('Webhook handler error:', err.message);
    return new Response(`Handler error: ${err.message}`, { status: 500 });
  }
});
