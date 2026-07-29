# Changelog

All notable changes to FirstTimeFitness are documented here.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
Versioning follows [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

> To release a new version: update the `VERSION` file and add an entry here under `[Unreleased]`, then open a PR. When the PR merges to `main`, the auto-release workflow tags the commit and creates a GitHub Release automatically.

---

## [Unreleased]

---

## [1.1.0] — 2026-07-29

### Added
- Curated dataset-based exercise substitutions on every exercise card in the Guide page — when a machine is taken, the app now surfaces specific alternatives drawn from the exercise dataset rather than generic suggestions
- Substitution chips are visible in the Guide page under each exercise's card and in the in-session swap flow

### Changed
- README updated to reflect the new substitution feature in the features list

---

## [1.0.0] — 2026-06-09

### Added
- Initial release of FirstTimeFitness — a single-file, zero-dependency, mobile-first web app for gym beginners
- 7-day weekly workout plan — Upper body (Mon/Thu), Lower body (Tue/Sat), Active recovery (Wed/Fri), Full rest (Sun)
- Exercise cards with form tips, coaching cues, and common mistakes per movement
- Set logging — weight (lbs) and reps per set with tap-to-complete checkmarks
- Effort rating (Easy / Medium / Hard) per exercise
- Session timer that starts automatically on first set tap
- Interval / HIIT timer with presets (Tabata / 30:30 / 40:20 / 60:30), custom rounds, warm-up/cooldown phases, and audio cue options
- Progressive overload hints — suggests weight increase or rep-building on return visits based on prior session data
- Finish & save session — writes full session detail to `localStorage`
- History page — last 30 sessions, weekly consistency stats, all-time session count
- Guide page — starting weight selection, rep speed, rest times, muscle group explanations, exercise substitutions, nutrition reference
- Mindset page — 8-week phase-by-phase expectations, signs of progress, beginner mistakes, end-of-session checklist
- Mobile-first design — bottom navigation, sticky header, iOS safe-area support, offline-first
- Optional Supabase cloud sync — auth overlay, cloud sync badge, bidirectional merge, Row Level Security
- Full project documentation: `README.md`, `DOCUMENTATION.md`, `INSTALLATION.md`, `ROADMAP.md`
- Add to Home Screen guide in `INSTALLATION.md` with iOS and Android walkthroughs

---

[Unreleased]: https://github.com/bmhornback/FirstTimeFitness/compare/v1.1.0...HEAD
[1.1.0]: https://github.com/bmhornback/FirstTimeFitness/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/bmhornback/FirstTimeFitness/releases/tag/v1.0.0
