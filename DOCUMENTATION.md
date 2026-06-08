# FirstTimeFitness Documentation

This document provides a practical overview of how the app works today, how data is stored, and how to make safe updates.

---

## Product Overview

FirstTimeFitness is a beginner-first gym app designed to run directly in the browser with no installation and no required account.

Core outcomes:
- Help a first-time gym user complete a structured weekly plan
- Provide form cues and beginner guidance in context
- Log workouts with minimal friction
- Keep data locally by default, with optional cloud sync

---

## Current Feature Set

### Workout
- 7-day schedule (Upper, Lower, Recovery, Rest)
- Exercise cards with form tips, cues, and common mistakes
- Per-set logging (weight + reps) with tap completion
- Effort tracking (Easy / Medium / Hard)
- Session timer started on first logged set

### Interval / HIIT
- Presets (Tabata, 30:30, 40:20, 60:30)
- Custom work/rest timing
- Optional warm-up and cooldown durations
- Start / pause / skip / reset controls with cues

### Guidance
- Guide tab with weight selection, rep speed, rest, substitutions, and nutrition basics
- Mindset tab with beginner expectations and progress framing

### History
- Most-recent-first workout history (up to 30 sessions shown)
- Weekly consistency stats and all-time session count
- Clear-history action

### Optional Cloud Sync (Supabase)
- Email/password sign-in and sign-up
- Continue-without-account mode
- Sync badge indicating status
- History/progression sync after completed sessions

---

## Architecture

- Single-file app: `gym-tracker.html`
- No framework, no build step, no package manager scripts
- Browser storage via `localStorage`
- Optional Supabase integration (client-side)

---

## Data Storage

Primary local keys:
- `gymHistory_v3` — session history
- `gymProg_v3` — progression hints data

Cloud schema and RLS policies:
- Defined in `supabase-setup.sql`

---

## Local Development

1. Open `gym-tracker.html` directly in a browser, or host as a static file.
2. Make focused edits in-place (HTML/CSS/JS live together).
3. Validate behavior manually in a mobile viewport (iOS Safari + Android Chrome when possible).

---

## Deployment

Because this is static and single-file, deployment is platform-agnostic:
- GitHub Pages
- Netlify
- Vercel
- Any static host/CDN

No build command is required.

---

## Documentation Maintenance Rules

When features change:
1. Update feature summaries in `README.md`
2. Update implementation/state details in `DOCUMENTATION.md`
3. Update phase status and next priorities in `ROADMAP.md`

Keep all three files aligned so contributors can quickly see:
- what exists now,
- how it works,
- what comes next.
