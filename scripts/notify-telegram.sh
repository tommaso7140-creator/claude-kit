#!/bin/bash
# Notification Telegram - Claude Code Hook (Stop)
# Configuration :
# 1. Creer un bot via @BotFather → copier le token
# 2. Obtenir ton chat_id via @userinfobot
# 3. export TELEGRAM_BOT_TOKEN=123456:ABC-DEF...
# 4. export TELEGRAM_CHAT_ID=123456789
# 5. chmod +x ~/.claude/scripts/notify-telegram.sh

# Charger les variables si pas déjà définies
[ -f "$HOME/.claude/.env.telegram" ] && source "$HOME/.claude/.env.telegram"

[ -z "$TELEGRAM_BOT_TOKEN" ] || [ -z "$TELEGRAM_CHAT_ID" ] && exit 0

TIMESTAMP=$(date +"%H:%M")
MESSAGE="Claude Code termine ($TIMESTAMP)"

curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
  --data-urlencode "chat_id=${TELEGRAM_CHAT_ID}" \
  --data-urlencode "text=${MESSAGE}" \
  --max-time 10 > /dev/null 2>&1

exit 0
