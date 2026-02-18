# Protocole de Travail

> Derniere MAJ : fevrier 2026

## 1. Structure des Projets

### Arborescence standard
projet/
├── .env.example       # Template variables env (sans secrets)
├── .gitignore
├── README.md
├── CHANGELOG.md
├── src/
├── tests/
├── docs/
└── scripts/

## 2. Git Workflow

### Branches
main            Production stable
├── develop     Integration / pre-prod
│   ├── feature/xxx
│   ├── fix/xxx
│   ├── refactor/xxx
│   └── hotfix/xxx

### Conventions de commit
Format : type(scope): description courte

| Type | Usage |
|------|-------|
| feat | Nouvelle fonctionnalite |
| fix | Correction de bug |
| refactor | Refactoring |
| docs | Documentation |
| style | Formatage, typos |
| test | Tests |
| chore | Maintenance, deps |

## 3. Qualite du Code

### Conventions
| Langage | Variables | Fichiers | Fonctions |
|---------|-----------|----------|-----------|
| Python | snake_case | kebab-case | snake_case + docstring |
| JavaScript | camelCase | kebab-case | camelCase |

### Checklist avant commit
- [ ] Code fonctionne localement
- [ ] Pas de secrets en clair
- [ ] Variables .env documentees dans .env.example
- [ ] Commentaires en francais sur parties complexes
- [ ] Console.log / print debug retires

## 4. Gestion des Secrets

1. JAMAIS de secrets dans le code
2. JAMAIS de .env dans Git
3. Toujours un .env.example avec les cles vides

## 5. Versionning Semantique

Format : MAJOR.MINOR.PATCH

| Increment | Quand |
|-----------|-------|
| MAJOR | Breaking changes |
| MINOR | Nouvelles features |
| PATCH | Bug fixes |

## 6. .gitignore universel

.env
.env.local
.env.*.local
node_modules/
venv/
__pycache__/
*.pyc
dist/
build/
.vscode/
.idea/
.DS_Store
Thumbs.db
*.log
logs/
tmp/
