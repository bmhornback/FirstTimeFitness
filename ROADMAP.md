# FirstTimeFitness — Development Roadmap

This document outlines the vision for the project, what has already been built, and a structured plan for what comes next. The goal is to keep each phase focused and shippable — building on a solid foundation rather than adding complexity before it's earned.

---

## Vision

FirstTimeFitness exists to make the gym accessible to people who feel like it wasn't built for them. The long-term vision is an app that:

- Guides a true beginner from their first workout through their first year of consistent training
- Removes friction at every step — no jargon, no assumptions, no setup required
- Works offline-first so it's reliable in any gym with poor cell service
- Optionally syncs across devices so your history is never tied to one phone
- Grows with the user — from their first leg press to more advanced programming

---

## Current State — Phase 1 ✅

**What's built and working today:**

- [x] Single-file app (`gym-tracker.html`) — no install, no build step, works offline
- [x] 7-day weekly plan — Upper (Mon/Thu), Lower (Tue/Sat), Rest/Recovery (Wed/Fri/Sun)
- [x] Exercise cards with form tips, coaching cues, and common mistakes per exercise
- [x] Set logging — weight (lbs) + reps per set with tap-to-complete checkmarks
- [x] Effort rating (Easy / Medium / Hard) per exercise
- [x] Session timer — starts on first set tap
- [x] Progressive overload hints — suggests weight increase or rep-building on return visits
- [x] Finish & save session — writes full session detail to `localStorage`
- [x] History page — last 30 sessions, weekly consistency stats, all-time count
- [x] Guide page — weight selection, rep speed, rest times, muscle groups, substitutions, nutrition
- [x] Mindset page — 8-week phase expectations, signs of progress, beginner mistakes
- [x] Mobile-first design — bottom nav, sticky header, iOS safe-area support
- [x] Supabase auth and sync code written and in-app (activation requires credentials — see Phase 3)

---

## Phase 2 — Polish & Local Enhancements

**Focus:** Improve the existing experience before adding infrastructure. All Phase 2 items work without any backend.

### Workout Experience
- [ ] **Rest timer** — tap a set checkmark and a countdown (configurable per exercise) starts automatically with haptic feedback
- [ ] **Exercise swap** — tap an exercise to see the substitution list from the Guide and swap it in-session without leaving the page
- [ ] **Warm-up sets** — add a lightweight first set (50% of working weight) before the logged sets begin
- [ ] **Notes field** — free-text note on each exercise or at the end of a session (e.g., "left shoulder felt tight")
- [ ] **Bodyweight support** — flag exercises where the user tracks bodyweight + added weight (e.g., goblet squat with just bodyweight)

### Progression & History
- [ ] **Personal records (PRs)** — automatically flag when a user hits a new max weight on any exercise
- [ ] **Exercise-level history** — tap any exercise in the Guide to see your last 5 entries for that movement
- [ ] **Weekly chart** — simple bar or dot chart showing sessions per week over the last 8 weeks
- [ ] **Streaks** — track current weekly streak and longest streak
- [ ] **Export history** — download workout log as a `.csv` file for import into spreadsheets

### UI / UX Improvements
- [ ] **Dark/light mode toggle** — system-default preferred, manual override available
- [ ] **Add to home screen prompt** — PWA manifest + service worker so the app installs like a native app on iOS/Android
- [ ] **Onboarding flow** — first-launch walkthrough (2–3 screens) that explains the plan and sets expectations
- [ ] **Animated completion** — brief celebration animation when all sets in a session are complete
- [ ] **Accessibility pass** — ARIA labels, focus management, color contrast audit

---

## Phase 3 — Cloud Sync & Accounts (Supabase)

**Focus:** Allow users to access their workout history across multiple devices and protect their data from a cleared browser.

> **Status:** The Supabase integration code is already written and lives in `gym-tracker.html`. The `supabase-setup.sql` file contains the full database schema. Activation requires setting up a Supabase project and replacing the placeholder credentials in the app.

### What's Already Built
- Auth overlay (email/password sign-in and sign-up)
- "Continue without account" option — app always works without signing in
- Sync badge in the header showing online/offline/synced state
- `syncHistoryEntryToCloud()` — fires after each `finishSession()`
- `syncProgToCloud()` — upserts progression data on session finish
- `loadFromSupabase()` — bidirectional merge on sign-in (cloud → local and local → cloud)
- `clearHistoryFromCloud()` — deletes cloud rows when history is cleared locally
- Row Level Security (RLS) policies in SQL — users can only see and modify their own rows

### Activation Steps (when ready)
1. Create a project at [supabase.com](https://supabase.com)
2. Run `supabase-setup.sql` in the Supabase SQL editor
3. Copy the **Project URL** and **anon public key** from Project Settings → API
4. Replace `YOUR_SUPABASE_URL` and `YOUR_SUPABASE_ANON_KEY` in `gym-tracker.html`

### Remaining Work for Phase 3
- [ ] **Email confirmation flow** — handle the "check your email" state more gracefully
- [ ] **Offline queue** — if a session finishes while offline, queue it and sync when connectivity returns
- [ ] **Conflict resolution** — handle the edge case where the same `ts` exists with different data
- [ ] **Session token persistence** — ensure `getSession()` restores correctly on mobile app-kill/reopen
- [ ] **Account settings page** — change password, delete account, export all data
- [ ] **Environment variable approach** — move credentials out of the HTML file for hosted deployments (e.g., build step with a `.env` or a server-side config endpoint)

---

## Phase 4 — Expanded Programming

**Focus:** Grow the app beyond a single 7-day beginner plan into something that serves users as they progress.

### Program Variants
- [ ] **Phase 2 program** — a progression of the current plan for users completing their first 8 weeks (e.g., adding supersets, changing rep ranges, introducing new movements)
- [ ] **Goal-based variants** — user selects a goal (fat loss / strength / muscle / athletic) at onboarding and gets a slightly different exercise selection and rep scheme
- [ ] **3-day program** — for users who can only get to the gym 3 days per week
- [ ] **Home gym / no-equipment mode** — a parallel plan using only bodyweight and resistance bands

### Exercise Library
- [ ] **Exercise database** — searchable library of 50–100 exercises with instructions, muscle diagrams, and video demos (self-hosted or linked)
- [ ] **Custom workout builder** — let users add/remove/reorder exercises within a day
- [ ] **Machine variant selector** — user marks which machines their gym has and the app surfaces only relevant substitutions

### Coaching & Intelligence
- [ ] **Deload detection** — if the user misses 2+ weeks, suggest a deload week before resuming
- [ ] **Volume tracker** — track total weekly sets per muscle group and warn if a muscle group is undertrained or overtrained
- [ ] **AI-powered form feedback** — camera-based rep counting or form check (exploratory/long-term)

---

## Phase 5 — Platform & Community (Long-term)

**Focus:** If the user base grows, introduce social and platform features that reinforce the beginner community.

- [ ] **Public profiles** — optional shareable progress page
- [ ] **Beginner community** — a space for first-timers to ask questions without judgment
- [ ] **Coach/trainer mode** — trainers can build a custom plan and share a link that loads into a client's app
- [ ] **Native app** — React Native or Swift/Kotlin wrapper around the web app for full native features (notifications, HealthKit/Google Fit sync)
- [ ] **Push notifications** — opt-in reminder to complete scheduled workouts

---

## Development Principles

These principles guide every decision about what to build and how to build it:

1. **Beginner first** — every feature must make sense to someone on their first week. If it adds confusion, it doesn't ship.
2. **Offline first** — the app must always work without a network connection. Cloud features are an enhancement, not a requirement.
3. **Zero setup** — the app should open and work with no accounts, no installs, and no configuration.
4. **One file for as long as possible** — the single-file architecture is a feature, not a limitation. Resist the urge to add frameworks until the complexity truly demands it.
5. **Mobile first** — most users will be using this on their phone in the gym. Every interaction is designed for thumbs, not mouse cursors.
6. **Data portability** — user data belongs to the user. Export must always be available.

---

## Contribution Guidelines

- Open an issue before starting major work to align on approach
- Keep PRs focused — one feature or fix per PR
- Test on mobile (iOS Safari and Android Chrome) before submitting
- Follow the existing code style — no build tooling, no frameworks, no transpilation
- Document new features in README.md and update this roadmap when phases are completed
