# Changelog

All notable changes to FirstTimeFitness are documented here.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
Versioning follows [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

> To release a new version: update the `VERSION` file and document changes under `## [Unreleased]`, then move those entries into a new `## [X.Y.Z] — YYYY-MM-DD` section directly below `[Unreleased]` (where `X.Y.Z` matches the `VERSION` value) and leave `## [Unreleased]` empty for future changes. The auto-release workflow reads the `## [X.Y.Z]` section matching `VERSION` to generate the GitHub Release notes — it will fail if no matching section is found.

---

## [Unreleased]

### Added
- New "How to perform each stretch" guide subsection covering all 11 cool-down stretches with beginner-safe instructions: starting position, movement steps, what to feel, common mistakes, and breathing/hold cues
- Tappable cool-down stretch items in workout sessions that jump directly to the matching stretch instruction card in the Guide tab
- Per-stretch visual reference thumbnails plus optional "Watch demo" links for motion clarity, including a safety-focused fallback message when an image cannot load

### Changed
- Expanded stretch guidance UX with explicit safety language (avoid pain/bouncing, scale range of motion) and media attribution notes for visual resources

---

## [1.2.0] — 2026-07-29

### Added
- Per-day cool-down stretch cards on every workout day — upper body stretches (Mon/Thu) and lower body stretches (Tue/Sat) appear in a green card below the cardio row, giving beginners a guided 5-minute post-workout routine
- Stretches added: chest doorway stretch, lat overhead stretch, rear delt cross-body pull, triceps overhead stretch, neck side tilt (upper); hip flexor lunge stretch, standing quad stretch, seated hamstring stretch, figure-4 glute stretch, adductor butterfly stretch, calf wall stretch (lower)
- "Cool-down & stretching" section added to the Guide page — reference tables covering upper and lower body stretches with target muscle and hold time for each movement
- Updated workout duration table in Guide to include the 5-minute cool-down row (total target now 50–90 min)
- Cool-down stretches address the gap muscle groups not covered by any workout exercise: hip flexors, inner-thigh adductors, and lower back

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

[Unreleased]: https://github.com/bmhornback/FirstTimeFitness/compare/v1.2.0...HEAD
[1.2.0]: https://github.com/bmhornback/FirstTimeFitness/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/bmhornback/FirstTimeFitness/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/bmhornback/FirstTimeFitness/releases/tag/v1.0.0
