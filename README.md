# Diwali greeting: Le Techie & Morus AI

## Files
- `index.html`: the "Light the Diyas" landing page (self-contained; it only needs `logo.png`)
- `diwali-email.gif`: animated email image, 1200×800, 358 KB, 2.4 s loop (first frame is complete for Outlook)
- `diwali-email.png`: static fallback, 1200×800
- `og-image.jpg`: the same image as a 100 KB JPG, used for link previews (WhatsApp ignores large PNGs)
- `email-snippet.html`: HTML to paste into the email
- `email-preview.html`: the page used to render the email image
- `set-url.sh`: fills in your live URL everywhere

## Deploy to Vercel (about 2 minutes)
Run these from inside this folder:

```bash
npm i -g vercel
```

```bash
vercel login
```

```bash
vercel deploy --prod --yes
```

This prints a URL like `https://diwali-site.vercel.app`. Put that URL into the link-preview tags and the email snippet, then deploy again:

```bash
./set-url.sh https://diwali-site.vercel.app
```

```bash
vercel deploy --prod --yes
```

To use a custom domain (e.g. `diwali.morusai.ca`), go to Vercel → Project → Settings → Domains and add it. If you do, run `set-url.sh` with that domain instead.

Check the link preview at https://www.opengraph.xyz/ (LinkedIn caches previews; use https://www.linkedin.com/post-inspector/ to refresh).
