# FirstTimeFitness Installation & Access Guide

FirstTimeFitness does not require a traditional install. It runs as a browser-based app, so "installation" currently means getting a hosted copy of the app onto a device and opening it in a supported browser.

---

## System / Browser Prerequisites

Use one of the following:

- **iPhone / iPad:** current Safari on iOS or iPadOS
- **Android phone / tablet:** current Chrome on Android
- **Desktop / laptop:** current Chrome, Edge, Firefox, or Safari

Other requirements:

- JavaScript must be enabled
- Browser storage (`localStorage`) must be available so the app can save workout data locally
- Internet access is recommended for the first load of a hosted copy of the app

---

## Mobile Access Options

### Option 1 — GitHub Pages

This is the simplest way to make the app available on a phone.

1. In the repository, go to **Settings → Pages**
2. Set **Source** to the `main` branch and root `/`
3. Wait for GitHub Pages to publish the site
4. On your phone, open:
   - `https://bmhornback.github.io/FirstTimeFitness/gym-tracker.html`

### Option 2 — Netlify or Vercel

If you prefer another static host:

1. Import the repository into Netlify or Vercel
2. Deploy it as a static site with no build command
3. Open the generated site URL on your phone in Safari or Chrome

### Option 3 — Local Network Access

If you are testing from your own computer and phone:

1. Clone the repository to a computer on the same Wi-Fi network as your phone
2. Serve the project folder with any static file server
3. Open the computer's local network URL from your phone's browser

Example local server commands:

```bash
# from the repository root
python3 -m http.server 8000

# or
npx serve .
```

Then open a URL like `http://YOUR-COMPUTER-IP:8000/gym-tracker.html` on your phone.

---

## Optional: Add a Home Screen Shortcut

The app is not a native mobile app or full installable PWA yet, but you can save a shortcut on your device:

- **iPhone / iPad (Safari):** Share → **Add to Home Screen**
- **Android (Chrome):** Browser menu → **Add to Home screen**

This creates a quick-launch shortcut to the hosted app in your mobile browser.

---

## Notes

- No App Store or Google Play installation is available at this time
- Offline behavior depends on the browser having already loaded the app on that device
- Workout history is saved locally on the device unless optional cloud sync is configured
