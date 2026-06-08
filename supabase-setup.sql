-- ─── Gym Tracker — Supabase Database Setup ───────────────────────────────────
-- Run this SQL in the Supabase SQL editor for your project:
-- https://app.supabase.com → SQL Editor → New query

-- ─── workout_history ─────────────────────────────────────────────────────────
-- Stores each completed workout session per user.

create table if not exists workout_history (
  id          uuid default gen_random_uuid() primary key,
  user_id     uuid references auth.users not null,
  date        text not null,           -- e.g. "Jun 7, 2026"
  ts          bigint not null,         -- Unix ms timestamp — used for dedup
  day         text not null,           -- e.g. "Mon — Upper body"
  day_idx     integer not null,        -- 0–6 index into the weekly DAYS array
  detail      text,                    -- multi-line log of sets/reps/effort
  created_at  timestamptz default now()
);

-- Row Level Security: users can only access their own rows
alter table workout_history enable row level security;

create policy "Users can manage their own workout history"
  on workout_history
  for all
  using (auth.uid() = user_id);

-- Index for fast per-user queries ordered by time
create index if not exists workout_history_user_ts on workout_history (user_id, ts);


-- ─── progression_data ────────────────────────────────────────────────────────
-- Stores the last-known weight/rep data per exercise per day, used to
-- display progressive overload hints on the next visit.

create table if not exists progression_data (
  id              uuid default gen_random_uuid() primary key,
  user_id         uuid references auth.users not null,
  day_idx         integer not null,           -- 0–6 index into DAYS array
  exercise_data   jsonb not null,             -- array of {name, weight, hitTop}
  updated_at      timestamptz default now(),
  unique (user_id, day_idx)                   -- one row per user per training day
);

-- Row Level Security
alter table progression_data enable row level security;

create policy "Users can manage their own progression data"
  on progression_data
  for all
  using (auth.uid() = user_id);
