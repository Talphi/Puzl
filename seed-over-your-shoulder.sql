-- ============================================================
-- Over Your Shoulder — Micromanagement scenario set
-- Role: designer | Access: pro | Pathway: overyourshoulder
-- Run this in the Supabase SQL Editor
-- ============================================================

insert into scenarios
  (role, pathway, category, difficulty, context, speaker, opt_a, opt_b, opt_c, opt_d, correct_opt, feedback, tip, order_num, access_level, is_active)
values

-- 1. The Figma Edit
(
  'designer',
  'overyourshoulder',
  '👀 Over Your Shoulder',
  'Hard',
  'You''ve been designing a new onboarding flow for two weeks. You open Figma on Monday morning to find the PM has made direct edits to your file over the weekend — moved components, rewritten copy, repositioned the CTA. You check Slack and see they already shared the updated file with engineering this morning.',
  '"I was up late going through the flows and tidied a few things. Engineering loved it in standup — I think we''re nearly ready to build. The copy on step 3 is much sharper now."',
  'Engineering already has momentum behind this version. Accept it for now, document what changed, and push for more design control on the next project.',
  'Reply in the thread, thank them for the effort, but flag to engineering that the design is still in progress and the shared version wasn''t final.',
  'Have a private 1:1 with the PM first — acknowledge anything genuinely good, walk through your original rationale, and align on one version before it goes further.',
  'Loop in your design lead before responding — you need cover given the PM has already moved this to engineering without you.',
  'c',
  'Acknowledging their intent — moving fast, being helpful — while re-establishing ownership is the most durable move. Direct edits to a live design file create confusion around version history and signal that the process isn''t clear. A brief, non-confrontational conversation about how feedback works is more effective than ignoring it or escalating.',
  '🔑 Tactic: Address the behaviour, protect the relationship. The instinct is to let it go or get defensive. The right move is a private, direct conversation that validates their intent, names the specific problem as a process issue not a personal one, and gives them a path that works for both of you going forward.',
  1000,
  'pro',
  true
),

-- 2. The Daily Check-In
(
  'designer',
  'overyourshoulder',
  '👀 Over Your Shoulder',
  'Medium',
  'Your PM runs a 15-minute design check-in every morning. You''re 8 months in, never missed a deadline. The meetings have no agenda — but worse, they''ve started using them to quietly reopen design decisions you''ve already locked. When you''ve tried to move on, they circle back. Last week you flagged it and they told you that you seemed "resistant to collaboration."',
  '"These check-ins help me stay across things and make sure we''re going in the right direction. I think it''s important we stay closely aligned given the complexity of what we''re building."',
  'Start bringing a tight structured update to every check-in — status, one decision you need, one you''ve made — make the meeting work on your terms.',
  'Ask for a separate conversation specifically about the pattern of reopening locked decisions — address the behaviour, not the meeting format.',
  'Keep attending but only bring work that''s already finalised — nothing live means nothing left to unravel.',
  'Raise it with your design lead — the check-ins are creating churn and you''ve already tried addressing it directly.',
  'b',
  'Managing around the check-ins doesn''t solve the real problem — decisions getting reopened. The meeting format is the symptom. The behaviour is the cause. A direct, private conversation that names the specific pattern without accusing is more durable than any workaround.',
  '🔑 Tactic: Name the pattern, not the symptom. Request a 1:1 and be specific without being accusatory: "I''ve noticed we sometimes revisit decisions we''ve already locked — I want to make sure I''m giving you what you need so that doesn''t keep happening." Then propose a clear format so they have visibility without an open floor to reopen finished work.',
  1001,
  'pro',
  true
),

-- 3. The Pixel Pusher
(
  'designer',
  'overyourshoulder',
  '👀 Over Your Shoulder',
  'Hard',
  'Three reviews running, the PM has given pixel-level feedback — specific font sizes, labels, padding values. When you''ve tried to redirect to intent before, they went to your design lead and said you were "dismissive of feedback." You''re walking into today''s review knowing this.',
  '"Can we try the heading at 18px instead of 20px? And the button should say ''Save changes'' not just ''Save''. Also the left padding — 16px not 24?"',
  'Implement all of it — given the history, this isn''t the fight worth having and small concessions keep bigger decisions yours.',
  'Note each request, make the changes you genuinely agree with, then send a short message after the meeting explaining the ones you didn''t change and why.',
  'Ask in the meeting: "Can you help me understand what''s feeling off about the current version?" — redirect to intent without making it confrontational.',
  'Make all the changes in the meeting and flag to your design lead afterwards that the feedback pattern is becoming a problem.',
  'b',
  'Given the history of this PM complaining when redirected, asking "what''s feeling off" in the room is likely to backfire again. Taking notes and following up in writing removes the emotional charge, creates a record, and signals you listened — without just doing whatever you were told.',
  '🔑 Tactic: Take the conversation out of the room before you push back. In the meeting, note each request and say nothing beyond "noted." Afterwards, send a short written message: "Here''s what came out of the review — I''ve made changes A and B, I''ve kept C and D as-is and here''s why." Written follow-up creates a record and removes the complaint surface.',
  1002,
  'pro',
  true
),

-- 4. The Wireframe Drop
(
  'designer',
  'overyourshoulder',
  '👀 Over Your Shoulder',
  'Hard',
  'Day 3 of a 2-week sprint. You''re well underway when the PM sends a Figma link to a wireframe they sketched over the weekend. You ask what specific stakeholder feedback prompted this. They say it was more of a general feeling in the room and there''s no time to test — alignment would cost another 2-3 weeks. The PM is well-liked by leadership and has been at the company longer than you.',
  '"Look, I don''t have specific quotes — it was more of a vibe in the room. I''ve been doing this long enough to trust my gut. I need you to move forward with my version."',
  'Switch to their direction and document what you''re dropping — you''ve said your piece, they have seniority, and a paper trail protects you if it goes wrong.',
  'Agree to move forward, but send a short written recap of the conversation — not accusatory, just factual: what was decided, what was set aside, and why.',
  'Ask for one final thing before you switch: a 20-minute sync with them and your design lead so the decision is made in front of a third party.',
  'Tell them you''re happy to explore their direction but you need 24 hours to finish your current thread first — buy time to build a stronger case.',
  'b',
  'You''ve tried the right moves — asked for evidence, proposed testing — and both were shut down. At this point, continuing to push risks the relationship and your standing. The right move is to comply, but protect yourself. A factual written recap creates a paper trail without being confrontational, and gives you something to point to if the direction fails.',
  '🔑 Tactic: If you can''t stop the decision, document it. Send a short, factual recap — not a complaint. Something like: "Just confirming what we agreed: we''re moving forward with your wireframe direction, original direction set aside. Happy to flag risks as we go." No accusations. If it goes wrong later, you have something to point to. If it goes well, no harm done.',
  1003,
  'pro',
  true
),

-- 5. The Public Undercut
(
  'designer',
  'overyourshoulder',
  '👀 Over Your Shoulder',
  'Hard',
  'You''re presenting to 12 people including your design lead and two senior stakeholders. You''ve been working on this for three weeks. The PM has seen the work twice and said nothing. Halfway through your first screen, they speak up.',
  '"Actually — I should add some context here. This went through quite a few iterations and I think there are some open questions we haven''t fully resolved. I want to make sure leadership knows this isn''t completely signed off."',
  'Pause and invite them to share their concerns — let the room hear everything now rather than let doubt sit in silence.',
  'Acknowledge it briefly, finish your presentation, then address it privately afterwards — never fight the room.',
  'Ask directly: "Can you be specific about which questions are open? I want to make sure we address them today."',
  'Pivot your presentation — shift from presenting a direction to facilitating a discussion, so the unresolved framing works in your favour.',
  'b',
  'Stopping to argue looks defensive. Pivoting looks weak. Ignoring it entirely looks oblivious. A brief acknowledgement keeps you in control, and finishing strong protects your credibility with the room. The private conversation afterwards is where you actually fix it.',
  '🔑 Tactic: Never fight the room — win it after. In the moment, a brief acknowledgement is enough: "Good to flag — let''s make sure we get into that." Then keep presenting. Immediately after the meeting, request a private conversation with the PM: "I want to understand what felt unresolved to you — can we grab 15 minutes?" That''s where the real work happens.',
  1004,
  'pro',
  true
),

-- 6. The Eleventh-Hour Feedback
(
  'designer',
  'overyourshoulder',
  '👀 Over Your Shoulder',
  'Hard',
  'One day from handoff. The PM has signed off three times. You''ve just sent the final file to the engineering lead when a message comes in. The PM''s relationship with the Head of Product is close — they lunch together weekly.',
  '"I was showing this to the Head of Product last night and they had some thoughts. I know we said we were done but their input carries weight and I think we need to take it seriously. Probably only a day or two."',
  'Take the feedback — the Head of Product outranks both of you and blocking their input is a losing position.',
  'Ask to see the specific feedback before committing to anything — seniority of the source doesn''t change the need to understand what''s actually being asked.',
  'Accept it, but message the engineering lead now to flag the delay so they''re not blindsided.',
  'Push back — the PM signed off three times and moving the goalposts the day before handoff sets a precedent that will repeat.',
  'b',
  'The Head of Product''s seniority is being used as pressure to bypass process. A is the trap — it teaches the PM that invoking a senior name is enough to reopen finished work anytime. You need to see the actual feedback before agreeing to act on it. Vague senior feedback often evaporates when asked to be specific.',
  '🔑 Tactic: Seniority isn''t a brief — ask for the actual feedback. Don''t push back on the source — that''s a losing argument. Instead ask: "Can you send me the specific feedback points? Once I can see what they''re responding to I can tell you what''s a quick fix and what needs more time." This forces feedback to be concrete and gives you a basis to triage what''s worth changing.',
  1005,
  'pro',
  true
),

-- 7. The Pre-emptive Solution
(
  'designer',
  'overyourshoulder',
  '👀 Over Your Shoulder',
  'Medium',
  'You''ve spent a week on a research synthesis with a clear, evidenced direction. This is the third project in a row where the PM has jumped to a solution before seeing the work. Last time you pushed back they told your design lead you were "too attached to your own ideas."',
  '"I''ve been thinking about this a lot and honestly I think the answer is simple — just a modal with a form. I''ve seen it work well on other products. I don''t think we need to overcomplicate it."',
  'Explore the modal alongside your recommendation — it costs a day, shows you''re open, and neutralises the "too attached" criticism.',
  'Ask: "What user problem do you think the modal solves?" — if they can''t answer, the idea doesn''t have legs.',
  'Finish your presentation first, then address their idea directly — the research will either validate or contradict the modal without you having to challenge them.',
  'Agree to explore the modal but only after you''ve presented — set the condition before you commit.',
  'c',
  'Given the history of being called "too attached," directly challenging their idea risks another complaint. Finishing your presentation lets the research do the challenging for you — without you having to say a word against their idea. The data either validates or contradicts the modal, and that''s a harder thing to argue with than a designer saying no.',
  '🔑 Tactic: Let the research do the challenging for you. Don''t engage with their idea before you''ve presented your evidence. Finish the presentation, then address their idea against the research findings at the end: "You mentioned a modal — here''s what we learned about how users navigate this flow. Here''s where that approach creates friction, and here''s where it might work." You''re not dismissing them — you''re putting both ideas through the same filter.',
  1006,
  'pro',
  true
),

-- 8. The Committed Deadline
(
  'designer',
  'overyourshoulder',
  '👀 Over Your Shoulder',
  'Hard',
  'Midway through a 3-week design phase. No missed deadlines in 6 months. You open Slack to find a message sent to a group channel including your design lead, the engineering lead, and two PMs.',
  '"Hey team — just confirming designs will be ready by Thursday. Really excited about the momentum we''ve built here. @you — you good?"',
  'Reply in the thread confirming Thursday — they''ve committed you publicly in front of leadership and contradicting it now damages both of you.',
  'Reply in the thread: "Happy to align on Thursday — let''s jump on a quick call to confirm scope" — buy time to negotiate privately without a public disagreement.',
  'Message the PM privately first before responding publicly — find out why Thursday and what they expect to be ready.',
  'Reply in the thread honestly — flag that Thursday is earlier than agreed and ask what''s driving the change.',
  'b',
  'You can''t ignore a public message in front of leadership. A full confirmation (A) commits you to an undefined scope. A private message first (C) leaves the thread hanging. Flagging disagreement publicly (D) creates friction in front of the whole team. B responds publicly and positively but immediately creates the off-ramp to negotiate scope privately.',
  '🔑 Tactic: Don''t absorb the deadline — negotiate scope in public. Reply positively but create the off-ramp: "Happy to align on Thursday — let''s jump on a quick call to confirm scope." In the private call, be direct: "I can hit Thursday if we agree on what''s in scope. Here''s what''s realistic and here''s what gets cut. You choose." Make the trade-off their decision, not your problem to absorb quietly.',
  1007,
  'pro',
  true
),

-- 9. The Taste Objection
(
  'designer',
  'overyourshoulder',
  '👀 Over Your Shoulder',
  'Medium',
  'Your new feature UI tested well. Users described it as "clean" and "easy to use." The PM has brought up competitors in the last two reviews unprompted. They have a close relationship with the CEO who has also been vocal about wanting the product to feel "more premium."',
  '"I just feel like it''s a bit plain. Competitors have so much more going on visually. The CEO mentioned something similar last week. Can we make it feel more exciting — more premium?"',
  'Run a quick exploration of a richer visual direction — given the CEO comment, the political risk of not exploring it outweighs the design risk.',
  'Ask which competitors they''d consider premium and use those as a shared reference — stress-test your design against them.',
  'Ask two things before touching anything: what does premium mean for your specific users, and what problem is it solving — if neither has a clear answer, it''s not a brief.',
  'Propose a focused visual pass — same structure, richer colour and detail — a contained scope that addresses the feel without reopening the UX.',
  'c',
  '"Premium" is undefined. Nobody has said what it means for this product and these users. D accepts the premise that something needs to change without questioning whether it does. B hands them a brief once they name competitors. A is full capitulation to a vague direction. The right move is to define the problem before designing the solution.',
  '🔑 Tactic: A feeling isn''t a brief — define the problem before you design the solution. Ask two questions: "What does premium mean for our specific users?" and "What problem does it solve — is this a conversion issue, a retention issue, or a perception gap?" If neither has a clear answer, say it directly: "I want to get this right — can we spend 20 minutes defining what we''re going for before I start exploring? I''ll bring the test data, you bring the examples that inspired this, and we''ll build the brief together."',
  1008,
  'pro',
  true
),

-- 10. The Invisible Reversal
(
  'designer',
  'overyourshoulder',
  '👀 Over Your Shoulder',
  'Hard',
  'Last week the PM was enthusiastic. This week, after a leadership sync you weren''t invited to, everything has changed. This is the second time this has happened on this project. The PM has never once brought you into a leadership sync.',
  '"Leadership had some thoughts in our sync yesterday. I think we need to go back to basics — the current direction isn''t quite right for where we''re heading as a company."',
  'Ask what specifically came out of the sync before agreeing to restart — "go back to basics" isn''t actionable feedback.',
  'Accept the change but ask to be included in the next leadership sync where design work is being discussed — fix the process, not just this instance.',
  'Ask your design lead to get clarity on the feedback before you restart anything.',
  'Restart the work — leadership direction is legitimate, and if the PM says it''s not right, pushing back risks looking like you''re not aligned with company direction.',
  'a',
  'D is the trap — it sounds professionally humble but it rewards vague feedback. B fixes the process but doesn''t address this instance. C escalates before trying directly. You need specifics before restarting anything — "go back to basics" is not a direction you can design from.',
  '🔑 Tactic: Get specific before you redo anything. Ask for it in writing: "Can you send me a quick summary of what came out of the sync? Specifically — what''s not working about the current direction, what would make it right, and who needs to sign off on whatever we move to next." You''re not being obstructive — you''re asking for the minimum needed to do the work properly. Restarting without a clear brief just sets you up for another reversal in two weeks.',
  1009,
  'pro',
  true
),

-- 11. The Approval Bottleneck
(
  'designer',
  'overyourshoulder',
  '👀 Over Your Shoulder',
  'Medium',
  'You''re working on a feature dense with small UI decisions — icons, empty states, error messages. The PM insists on approving every one before it moves. You''ve been waiting two days on error message copy. When you raised it, they said the last designer "moved too fast and created a lot of rework."',
  '"I just want to make sure we''re aligned before anything gets finalised. Can you batch everything that needs sign-off and send it at the end of each day?"',
  'Agree to end-of-day batches — it''s structured, it unblocks you, and given the history with the last designer it''s worth showing you''re willing to work within their process.',
  'Agree for now but raise it with your design lead — the approval dependency is a timeline risk and you need it on record.',
  'Propose a scope agreement: decisions within an agreed boundary you make autonomously, decisions that affect user flow or brand come to them — replace approval with trust.',
  'Send everything waiting right now in one batch with clear rationale for each — make approval so frictionless that the bottleneck disappears.',
  'c',
  'A still requires approval for everything — it just makes the queue daily instead of ad-hoc. D makes it easier but doesn''t change the dynamic. B flags the risk but doesn''t solve it. The root problem is there is no agreed scope for autonomous decisions. C fixes the underlying issue rather than managing around it.',
  '🔑 Tactic: Replace approval with agreed scope. Propose a simple framework: "Can we agree on where the line is? Decisions within established patterns — copy, empty states, micro-UI — I make autonomously and flag in a weekly summary. Anything that affects user flow, introduces a new pattern, or touches brand comes to you first." Write it down once they agree. The goal is to replace a dependency on their availability with a shared understanding of what actually needs oversight.',
  1010,
  'pro',
  true
);
