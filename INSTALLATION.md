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

The app is not a native mobile app or full installable PWA yet, but you can still place it on your phone's home screen for quick access.

Before adding it, make sure you are on the final hosted app URL:

- GitHub Pages: `https://bmhornback.github.io/FirstTimeFitness/gym-tracker.html`
- Netlify / Vercel: your deployed `gym-tracker.html` page URL

### iPhone / iPad (Safari)

1. Open the hosted app in **Safari**
2. Wait until the page finishes loading
3. Tap the **Share** button at the bottom of the screen
4. Scroll down in the Share menu and tap **Add to Home Screen**
5. Review the name shown for the shortcut and change it if you want
6. Tap **Add**
7. Find the new shortcut on your home screen and tap it to reopen the app quickly

### Android (Chrome)

1. Open the hosted app in **Chrome**
2. Wait until the page finishes loading
3. Tap the **three-dot menu** in the top-right corner
4. Tap **Add to Home screen**
5. Review the shortcut name and change it if you want
6. Tap **Add** and confirm the placement when Android prompts you
7. Find the new shortcut on your home screen and tap it to reopen the app quickly

### What to expect

- This creates a browser shortcut, not a full native app install
- The shortcut opens the hosted web app directly from your home screen
- Because the project does not yet include a dedicated mobile app icon or full PWA install support, the icon style may vary by device and browser
- If you later change hosting providers or URLs, remove the old shortcut and add a new one from the updated page

---

## Notes

- No App Store or Google Play installation is available at this time
- Offline behavior depends on the browser having already loaded the app on that device
- Workout history is saved locally on the device unless optional cloud sync is configured
