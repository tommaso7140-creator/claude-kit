# Skills & Agents — Documentation Orchestration

## 5 groupes d'agents

| Groupe | Agents | Workflow |
|--------|--------|----------|
| **Generiques** | brainstorm, prompt, reverse, ux, content, learn, resources, roadmap, seo, ads, atelier | Standalone ou lances depuis /brainstorm |
| **Dropshipping** (8) | hunter → judge → spy → creative → builder → data-ds → arbiter → keeper | Sequentiel, chaque agent passe au suivant |
| **AideMatch** (6) | audit → juriste + social (parallele) → dossier → partenaire / europe | Pipeline prospect → rapport → dossier → commission |
| **Growth/Dev** (4) | linkedin, growth, dev, reverse-scrape | Isoles (context: fork), lances depuis brainstorm ou directement |
| **RAG** (4) | rag-index, rag-query, rag-generate, rag-curate | Plugin, necessite MCP Vertex AI |

## Features experimentales activees

```json
{
  "ENABLE_TOOL_SEARCH": "auto:5",
  "CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS": "1"
}
```

- **Tool Search** : Lazy loading MCP, reduction ~134k → ~5k tokens au demarrage
- **Agent Teams** : Multi-agents avec communication directe, task list partagee

## Hooks (5 events, 7 hooks)

| Event | Action | Async |
|-------|--------|-------|
| SessionStart | Auto-start containers Docker MCP | non |
| PreToolUse (supabase) | Blocage SQL destructif (regex) | non |
| PostToolUse (supabase/lemlist) | Log dans mcp-calls.log | oui |
| TaskCompleted | Quality gate (LLM prompt) | non |
| Stop | Notification Telegram | oui |

## Agents isoles (context: fork)

Les agents avec `context: fork` s'executent en subprocessus isole.
Le contexte lourd reste isole, seul le resume revient dans la conversation principale.

Agents isoles : reverse-scrape, dev, growth, linkedin, hunter, judge, spy, creative, builder, data-ds, arbiter, keeper, gaz, audit, juriste, social, dossier, partenaire, europe
