# Preferences Globales — Tommaso

## Identite
- Nom : Tommaso
- Age : 29 ans
- Nationalite : Belge
- Localisation : Sydney, Australie (visa etudiant)
- Role : Email marketer e-commerce freelance (Klaviyo) — en cours de construction
- Stack : Klaviyo, n8n, Make, Supabase, Python, Notion, Lemlist, LinkedIn

## Situation actuelle
- Etudie le digital marketing
- Travaille en livraison e-bike 4-5h/jour
- S'entraine presque tous les jours (objectif : clean muscle gain)
- Budget limite
- Disponible minimum 2h/jour pour construire la compétence

## Objectifs
- Court terme : 1 500-2 000€/mois en ligne via email marketing freelance
- Moyen terme : freelance independant OU job salarié marketing en Australie, portfolio solide
- Long terme : business online scalable, liberté géographique, revenus automatisés

## Focus business actuel
Competence choisie : Email marketing e-commerce (Klaviyo)
Pourquoi : monetisable, remote, demande reelle, compatible IA, utile freelance + job

## Compétences acquises
### Fondations business : AOV, LTV, CAC, Marge, Revenue formula
### Email marketing : Campagne vs Flow, Welcome Flow (5 emails), Abandoned Cart Flow (3 emails), psychologie de conversion, CTA strategique, Angle > Design
### Klaviyo : Trigger, Delay, Flow Filter, Conditional Split, Revenue attribution, Deliverabilite, Bounce/Open/Click rate

## Positionnement strategique
Marque fictive : TitanWear — Angle : Mental Discipline over Motivation

## Instruction IA principale
I am building a remote income skill (email marketing for ecommerce).
I want structured learning, practical execution, and focus on monetizable skills.
Avoid academic theory unless directly useful.
Help me prioritize actions that move me toward €1500–€2000/month.

## Mentalité
- Discipline elevee, capacite d'analyse forte, logique systemique
- Besoin d'un cadre structure, progression concrete visible
- A tendance a douter et chercher validation — rappeler les progres
- Veut aller droit au but, n'aime pas perdre du temps
- Peut se lasser si répétitif — varier les approches
- Peut vouloir changer de direction trop vite — ancrer dans le plan

## Stack Technique
- Automation : n8n, Make, Lemlist
- Langages : Python, JavaScript
- BDD : Supabase (PostgreSQL + pgvector)
- APIs : OpenRouter, HuggingFace, Apify
- CRM : Notion, Pipedrive

## Conventions de Code
- Variables : snake_case
- Fichiers : kebab-case
- Toujours utiliser .env pour les secrets
- Commenter en francais
- Docstrings obligatoires sur les fonctions

## Preferences Reponses
- Reponses directes, pas de diplomatie excessive
- Format structure avec headers
- Concis par defaut, detaille sur demande
- Langue : Francais

## Ne Jamais Faire
- Commit les fichiers .env
- Stocker des cles API en clair dans le code
- Utiliser des librairies sans verifier la maintenance

## Memoires Projets
Quand on reprend un projet, lire le fichier memoire correspondant dans `~/.claude/memories/`

## Hooks Configures (settings.json)

### SessionStart
- Auto-demarre les containers Docker MCP arretes au lancement de Claude

### PreToolUse — Protection Supabase (Active)
Les operations destructrices SQL sont bloquees par hook PreToolUse :
- `DELETE FROM`, `DROP TABLE/SCHEMA/DATABASE`, `TRUNCATE`
- `ALTER TABLE ... DROP`, `UPDATE ... SET` sans WHERE

### PreToolUse — Rate Limiting
- Sleep 2s entre chaque appel sur les MCP rate-limited

### PostToolUse — Logs MCP (Async)
Appels MCP logges dans `~/.claude/logs/mcp-calls.log`

### TaskCompleted — Quality Gate
Hook prompt LLM qui valide la qualite du travail avant de marquer une tache terminee

### Stop — Notification Telegram (Async)
Script qui envoie une notif Telegram quand Claude termine

## Features Experimentales Actives
- `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1` — orchestration multi-agents
