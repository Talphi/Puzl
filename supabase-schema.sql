-- De:Puzl / Seesaw — Supabase schema
-- Paste this entire file into the Supabase SQL Editor and click Run

-- ── SCENARIOS ──────────────────────────────────────────────────────────────
create table if not exists scenarios (
  id           uuid default gen_random_uuid() primary key,
  role         text not null check (role in ('designer', 'pm')),
  pathway      text not null default 'default',
  category     text not null,
  difficulty   text not null check (difficulty in ('Easy', 'Medium', 'Hard')),
  context      text not null,
  speaker      text not null,   -- "PM Says" text for designer role; "Designer Says" for pm role
  opt_a        text not null,
  opt_b        text not null,
  opt_c        text not null,
  opt_d        text not null,
  correct_opt  text not null check (correct_opt in ('a', 'b', 'c', 'd')),
  feedback     text not null,
  tip          text,
  order_num    integer,
  access_level text not null default 'free' check (access_level in ('free', 'pro')),
  is_active    boolean not null default true,
  created_at   timestamptz not null default now()
);

-- ── PROFILES ───────────────────────────────────────────────────────────────
create table if not exists profiles (
  id         uuid references auth.users primary key,
  username   text,
  plan       text not null default 'free' check (plan in ('free', 'pro')),
  is_admin   boolean not null default false,
  created_at timestamptz not null default now()
);

-- ── PROGRESS ───────────────────────────────────────────────────────────────
create table if not exists progress (
  id           uuid default gen_random_uuid() primary key,
  user_id      uuid references auth.users not null,
  scenario_id  uuid references scenarios not null,
  selected_opt text not null check (selected_opt in ('a', 'b', 'c', 'd')),
  is_correct   boolean not null,
  created_at   timestamptz not null default now(),
  unique (user_id, scenario_id)
);

-- ── ROW LEVEL SECURITY ─────────────────────────────────────────────────────
alter table scenarios enable row level security;
alter table profiles  enable row level security;
alter table progress  enable row level security;

-- Scenarios: anyone (including guests) can read active free scenarios
create policy "Public read: free active scenarios"
  on scenarios for select
  using (is_active = true and access_level = 'free');

-- Scenarios: pro users can also read pro scenarios
create policy "Pro read: all active scenarios"
  on scenarios for select
  using (
    is_active = true
    and exists (
      select 1 from profiles
      where profiles.id = auth.uid()
      and profiles.plan = 'pro'
    )
  );

-- Scenarios: admin can do everything
create policy "Admin full access to scenarios"
  on scenarios for all
  using (
    exists (
      select 1 from profiles
      where profiles.id = auth.uid()
      and profiles.is_admin = true
    )
  );

-- Profiles: users can read and update only their own profile
create policy "Users: read own profile"
  on profiles for select
  using (auth.uid() = id);

create policy "Users: insert own profile"
  on profiles for insert
  with check (auth.uid() = id);

create policy "Users: update own profile"
  on profiles for update
  using (auth.uid() = id);

-- Progress: users can read/write only their own progress
create policy "Users: read own progress"
  on progress for select
  using (auth.uid() = user_id);

create policy "Users: insert own progress"
  on progress for insert
  with check (auth.uid() = user_id);

create policy "Users: upsert own progress"
  on progress for update
  using (auth.uid() = user_id);

-- ── AUTO-CREATE PROFILE ON SIGNUP ─────────────────────────────────────────
create or replace function public.handle_new_user()
returns trigger language plpgsql security definer as $$
begin
  insert into public.profiles (id, username)
  values (
    new.id,
    coalesce(new.raw_user_meta_data->>'full_name', split_part(new.email, '@', 1))
  );
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();
