#!/bin/bash
# ============================================
# INSTALLER — Kit Claude Code de Tommaso
# Generated: 18 fevrier 2026
# ============================================

echo "🚀 Installation du kit Claude Code..."

# 1. Creer les dossiers
echo "📁 Creation des dossiers..."
mkdir -p ~/.claude/commands
mkdir -p ~/.claude/scripts
mkdir -p ~/.claude/memories
mkdir -p ~/.claude/logs
mkdir -p ~/.claude/plugins/rag-agents/commands

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 2. Copier les fichiers principaux
echo "📄 Copie des fichiers de configuration..."
cp "$SCRIPT_DIR/CLAUDE.md"              ~/.claude/CLAUDE.md
cp "$SCRIPT_DIR/WORKFLOW.md"            ~/.claude/WORKFLOW.md
cp "$SCRIPT_DIR/settings.json"          ~/.claude/settings.json
cp "$SCRIPT_DIR/settings.local.json"    ~/.claude/settings.local.json

# 3. Copier et rendre executable le script Telegram
echo "📬 Installation script Telegram..."
cp "$SCRIPT_DIR/scripts/notify-telegram.sh" ~/.claude/scripts/notify-telegram.sh
chmod +x ~/.claude/scripts/notify-telegram.sh

# 4. Copier les 31 commandes
echo "🤖 Installation des 31 agents..."
cp "$SCRIPT_DIR/commands/"*.md ~/.claude/commands/

# 5. Copier les plugins RAG
echo "🔍 Installation plugins RAG..."
cp "$SCRIPT_DIR/plugins/rag-agents/commands/"*.md ~/.claude/plugins/rag-agents/commands/

# 6. Copier les memories
echo "🧠 Installation memories..."
cp "$SCRIPT_DIR/memories/"*.md ~/.claude/memories/

# 7. Verification
echo ""
echo "✅ Installation terminee ! Verification..."
echo ""
echo "📂 ~/.claude/"
ls ~/.claude/
echo ""
echo "📂 ~/.claude/commands/ ($(ls ~/.claude/commands/*.md 2>/dev/null | wc -l | tr -d ' ') fichiers)"
ls ~/.claude/commands/*.md | xargs -I{} basename {}
echo ""
echo "📂 ~/.claude/plugins/rag-agents/commands/ ($(ls ~/.claude/plugins/rag-agents/commands/*.md 2>/dev/null | wc -l | tr -d ' ') fichiers)"
ls ~/.claude/plugins/rag-agents/commands/*.md | xargs -I{} basename {}
echo ""
echo "🎉 Kit Claude Code de Tommaso pret a l'emploi !"
echo ""
echo "⚠️  N'oublie pas de configurer :"
echo "   - TELEGRAM_BOT_TOKEN et TELEGRAM_CHAT_ID (optionnel)"
echo "   - Tes MCPs via : claude mcp add"
echo ""
echo "🧪 Test : lance 'claude' puis tape '/brainstorm test'"
