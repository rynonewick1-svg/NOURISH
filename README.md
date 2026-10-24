# NOURISH v2.1 — Personal Nutrition PWA

Upgrade of v2: daily protein/calorie/fibre target comparison on Home, trend charts for body weight/sleep/mood on Progress, browser-safe Supabase project configuration prefilled, and network-first service worker cache refresh.

## Deploy
1. In the live NOURISH app, export JSON in Settings as a precaution.
2. Upload the contents of this folder to your existing Netlify site, or commit the files to your connected GitHub repo and let Netlify deploy.
3. Open the live site and refresh; verify footer says NOURISH v2.1.
4. Sign in using your existing Supabase account. No new SQL or account needed.
5. Add at least two daily weight/sleep/mood logs to see trends.

## Security and privacy
The bundled Supabase URL and publishable key are public browser credentials, not administrator secrets. The existing database must have Row Level Security configured correctly. Your data is still stored in localStorage and backed up in public.user_data through Supabase authentication. Cloud synchronization is last-write-wins; avoid simultaneous edits across devices. No medical records should be entered.

## Reminders
The Reminders section exports recurring .ics events for your calendar. It does NOT schedule background push notifications. Import the calendar file and enable calendar notifications.

## Nutrition caveats
Nutrition values are approximate recipe estimates, not verified per-brand nutrient values. The Home targets compare *planned* breakfast/lunch/dinner averages, not actual consumed meals. No diagnosis or inference is made from mood or weight trends.
