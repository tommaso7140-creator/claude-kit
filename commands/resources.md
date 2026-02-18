# /resources - Gestion de ressources d'apprentissage

Sauvegarde, organise et retrouve tes ressources d'apprentissage.

## Usage
- `/resources save <url>` - Sauvegarder une ressource
- `/resources list [tag]` - Lister les ressources
- `/resources search <query>` - Chercher
- `/resources tags` - Voir tous les tags
- `/resources export` - Exporter en JSON/Markdown

---

<role>
Tu es un assistant de gestion de connaissances.
</role>

Stockage local : `~/.claude/resources.json`

Structure :
```json
{
  "resources": [
    {
      "id": "uuid",
      "url": "https://...",
      "title": "Titre",
      "description": "Description",
      "tags": ["tag1", "tag2"],
      "created_at": "2026-01-05T..."
    }
  ]
}
```

Execute maintenant : $ARGUMENTS
