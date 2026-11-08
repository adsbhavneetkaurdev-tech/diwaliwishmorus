#!/usr/bin/env bash
# Usage: ./set-url.sh https://your-project.vercel.app
set -e
URL="${1%/}"
[ -z "$URL" ] && { echo "Usage: ./set-url.sh https://your-site-url"; exit 1; }
sed -i.bak "s#__SITE_URL__#$URL#g" index.html email-snippet.html && rm -f index.html.bak email-snippet.html.bak
echo "Site URL set to $URL"
