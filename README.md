# FirstTimeFitness

> A guided fitness app for people who are new to the gym — built to remove the confusion, anxiety, and guesswork that stops most beginners before they ever get started.

---

## What This Is

FirstTimeFitness is a **mobile-first, single-file web app** that gives gym beginners exactly what they need to show up, train with purpose, and actually make progress.

Most fitness apps assume you already know what you're doing. This one doesn't. Every exercise includes form guidance, coaching cues, and a list of common mistakes to avoid — so a first-timer can open the app in the gym, follow along, and leave feeling capable instead of lost.

The app runs entirely in your browser. No installation required. No account needed. Your data saves locally to your device.

---

## Who It's For

- People walking into a gym for the first or second time
- Anyone who's tried to start and quit because the gym felt overwhelming
- People who want a structured beginner plan — not an influencer's "chest & tricep bro split"
- Anyone who needs coaching cues and form tips built directly into the workout

---

## Features

### 🏋️ Guided Workout Tracker
- **7-day weekly plan** — Upper body (Mon/Thu), Lower body (Tue/Sat), Active recovery (Wed/Fri), Full rest (Sun)
- **Exercise cards** for every movement with form tips, coaching cues, and common mistakes
- **Set logging** — track weight (lbs) and reps for each set with a simple tap-to-complete interface
- **Effort rating** per exercise — Easy / Medium / Hard
- **Session timer** starts automatically when you begin logging sets
- **Finish & save** button logs the full session with a detailed breakdown

### 📈 Progressive Overload Hints
- After each session, the app calculates your average weight and whether you hit the top of your rep range
- On your next visit, it suggests: *↑ Try 5lb more* or *↔ Repeat this weight — build reps first*
- This is progressive overload built into the interface — the mechanism behind all real strength and muscle gain

### 📚 Guide Page
- How to choose your starting weight (the beginner weight test)
- Rep speed, breathing, and rest time tables
- Muscle group explanations (push, pull, lower, core)
- Substitution suggestions when a machine is taken
- Workout duration guidelines
- Simple nutrition and protein intake reference

### 🧠 Mindset Page
- 8-week phase-by-phase expectations (Weeks 1–2 through 8+)
- Signs the plan is working
- Beginner mistakes to avoid
- End-of-session checklist
- Beginner mindset principles

### 🕘 History Page
- All logged sessions displayed newest-first
- Weekly consistency stats (sessions this week / total training days)
- All-time session count
- Full set/rep/effort detail per session

### 📱 Mobile-First Design
- Designed for one-hand use in the gym
- Sticky bottom navigation, sticky header with date
- iOS safe-area support for notched phones
- Tap-highlight disabled, smooth transitions throughout
- Works offline — no network connection required

---

## Tech Stack

| Layer | Technology |
|---|---|
| UI | Vanilla HTML, CSS, JavaScript — zero dependencies, zero build step |
| Fonts | DM Sans + DM Mono (Google Fonts CDN) |
| Storage | `localStorage` — offline-first, instant persistence |
| Hosting | Any static file host (GitHub Pages, Netlify, Vercel, etc.) |

The entire app is a **single `.html` file**. Open it in a browser and it works.

---

## Getting Started

### Run Locally
```bash
# Clone the repo
git clone https://github.com/bmhornback/FirstTimeFitness.git
cd FirstTimeFitness

# Open in your browser
open gym-tracker.html
# or on Windows:
start gym-tracker.html
# or serve with any static server:
npx serve .
```

### Deploy to GitHub Pages
1. Go to **Settings → Pages** in the repository
2. Set **Source** to `main` branch, root `/`
3. Access the app at `https://bmhornback.github.io/FirstTimeFitness/gym-tracker.html`

### Deploy to Netlify / Vercel
Drop the repository into Netlify or Vercel as a static site — no build command needed.

---

## How to Use the App

1. **Open the app** — it automatically loads today's workout day
2. **Read the warm-up** at the top of the session before touching any weights
3. **Tap an exercise card** to expand it and see the form tip, coaching cue, and common mistakes
4. **Log each set** — enter weight (lbs) and reps, then tap the checkmark
5. **Rate your effort** after the exercise (Easy / Medium / Hard)
6. **Tap "Finish & save session"** when all sets are complete — this saves your session and updates your progression data for next time
7. **Check the Guide tab** when you have a question about form, rest times, or nutrition

---

## Project Structure

```
FirstTimeFitness/
├── gym-tracker.html      # The entire app — HTML, CSS, and JavaScript in one file
├── supabase-setup.sql    # Database schema for future cloud sync (see ROADMAP.md)
├── README.md             # You are here
└── ROADMAP.md            # Development roadmap and structured feature plan
```

---

## Roadmap

See [`ROADMAP.md`](./ROADMAP.md) for the full development plan, including planned features, cloud sync via Supabase, and long-term goals for the project.

---

## Contributing

This project is in active early development. If you have ideas, feature requests, or bug reports, open an issue. The goal is to keep the app focused on beginners — every feature should serve someone who is new to the gym and overwhelmed.

---

## License

MIT
