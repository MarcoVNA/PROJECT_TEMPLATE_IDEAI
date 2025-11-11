#!/usr/bin/env bash
# Post a summary of an exec_status markdown file to a Microsoft Teams channel via Incoming Webhook
# Usage: TEAMS_WEBHOOK_URL=<url> ./scripts/post_teams_status.sh path/to/exec_status/YYYY-MM-DD.md

set -euo pipefail

if [ -z "${TEAMS_WEBHOOK_URL:-}" ]; then
  echo "Error: TEAMS_WEBHOOK_URL environment variable is not set." >&2
  echo "Set it to your Teams Incoming Webhook URL." >&2
  exit 1
fi

FILE=${1:-}
if [ -z "$FILE" ] || [ ! -f "$FILE" ]; then
  echo "Usage: TEAMS_WEBHOOK_URL=<url> $0 <path-to-exec-status-md>" >&2
  exit 1
fi

# Derive a title
TITLE=$(grep -m1 '^# ' "$FILE" | sed 's/^# //')
if [ -z "$TITLE" ]; then
  TITLE="Executive Status"
fi

# Extract Executive Summary section (lines after '## Executive Summary' until next '## ')
SUMMARY=$(awk '
  /^## Executive Summary/ {flag=1; next}
  /^## / {if(flag){flag=0}} 
  flag {print}
' "$FILE" | sed 's/"/\\"/g' | sed 's/\r$//' )

# Fallback: first 20 non-frontmatter, non-heading lines
if [ -z "$SUMMARY" ]; then
  SUMMARY=$(awk 'BEGIN{inmeta=0}
    /^---$/ {inmeta=!inmeta; next}
    { if(!inmeta && $0 !~ /^#/ && length($0)>0) {print} }
  ' "$FILE" | head -n 20 | sed 's/"/\\"/g')
fi

# Truncate to avoid overly long cards
SUMMARY_TRUNC=$(echo "$SUMMARY" | head -c 1800)

# Compose simple text payload (Incoming Webhook)
PAYLOAD=$(cat <<JSON
{
  "text": "${TITLE}\n\n${SUMMARY_TRUNC}"
}
JSON
)

# Post to Teams
HTTP_CODE=$(curl -sS -o /dev/null -w "%{http_code}" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD" \
  "$TEAMS_WEBHOOK_URL")

if [ "$HTTP_CODE" != "200" ]; then
  echo "Failed to post to Teams. HTTP $HTTP_CODE" >&2
  exit 1
fi

echo "Posted status to Teams: $TITLE"
