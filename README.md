# NOURISH v1 — Personal Nutrition PWA

A working offline-first, installable web app. Features: 11 editable recipes, 7-day meal planner, ingredient-derived grocery list, check-off shopping, pantry subtraction, mobile dashboard, optional weight/mood check-ins, local JSON backup and private Supabase account/cloud backup.

## Start locally
Run `python3 -m http.server 8080` inside this directory, then visit http://localhost:8080. Service workers and PWA install require HTTPS or localhost.

## Free hosting
Upload the folder to a GitHub repository and deploy with Vercel's free Hobby tier (or use Netlify's free tier). Set the publish/root directory to this folder. No build command is needed. The app is static HTML, CSS and JavaScript.

## Enable private cloud backup
1. Create your own free project at https://supabase.com.
2. In Supabase SQL Editor, run `supabase.sql`. The `user_data` table has row-level security (RLS) enabled, with per-user policies.
3. Under Project Settings → API, copy the project URL and **publishable/anon key**. Never use a service-role or secret key in the app.
4. In the app Settings screen, enter URL/key and save; create your email/password account and verify your email if prompted.
5. Sign in. The app stores a local copy and uploads changes to your private Supabase row. Existing cloud backups can be loaded after confirmation.

## Important limitations
- Cloud sync is optional and **not active until configured**. A free hosting account and Supabase project are not created for you.
- Sync is a last-write-wins single-user backup, not conflict-free multi-device collaboration. Avoid editing simultaneously on two devices.
- Offline support covers app assets and local state; initial cloud login requires internet.
- Nutrition macros are rough recipe estimates, not verified food-label calculations. Meals selected in the planner count as one serving. Some meals are intentionally repeated; recipe cooking yields may be larger.
- There is no push notification service yet. Weekly reminders can be configured later using web push or iOS Reminders.
- On iPhone Safari, use Share → Add to Home Screen after hosting via HTTPS.
- Do not treat mood tracking or nutrition estimates as medical advice.
- Do not store clinical records in this MVP.
