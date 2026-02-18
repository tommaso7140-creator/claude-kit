# Claude Kit — Kit Claude Code de Tommaso

Configuration personnelle pour [Claude Code](https://claude.ai/code) — installe en une commande un environnement complet avec agents, hooks et scripts.

## Installation

```bash
git clone https://github.com/tommaso7140-creator/claude-kit.git
cd claude-kit
chmod +x INSTALL.sh
./INSTALL.sh
```

## Ce que ça installe

| Composant | Détail |
|---|---|
| `CLAUDE.md` | Préférences globales (stack, conventions, objectifs) |
| `WORKFLOW.md` | Conventions Git, qualité code, gestion secrets |
| `settings.json` | Hooks Claude Code configurés |
| `commands/` | 31 agents slash commands |
| `plugins/rag-agents/` | 4 agents RAG (index, query, generate, curate) |
| `memories/` | Mémoires persistantes par projet |
| `scripts/` | Script notification Telegram |

## Agents disponibles

`/ads` `/arbiter` `/atelier` `/audit` `/brainstorm` `/builder` `/content` `/creative` `/data-ds` `/dev` `/dossier` `/europe` `/flights` `/gaz` `/growth` `/hunter` `/judge` `/juriste` `/keeper` `/learn` `/linkedin` `/partenaire` `/prompt` `/resources` `/reverse` `/reverse-scrape` `/roadmap` `/seo` `/social` `/spy` `/ux`

## Hooks configurés

| Hook | Action |
|---|---|
| `SessionStart` | Auto-démarre les containers Docker MCP arrêtés |
| `PreToolUse` | Bloque les opérations SQL destructrices sur Supabase |
| `PostToolUse` | Logue les appels MCP dans `~/.claude/logs/mcp-calls.log` |
| `TaskCompleted` | Quality gate — valide que le travail est réellement terminé |
| `Stop` | Envoie une notification Telegram en fin de session |

## Configuration Telegram (optionnel)

Crée le fichier `~/.claude/.env.telegram` :

```bash
TELEGRAM_BOT_TOKEN="ton_token"
TELEGRAM_CHAT_ID="ton_chat_id"
```

Récupère ces valeurs via `@BotFather` et `@userinfobot` sur Telegram.

## Configuration MCPs

```bash
claude mcp add
```

## Stack

Python · JavaScript · Supabase · n8n · Make · Klaviyo · Lemlist · Notion