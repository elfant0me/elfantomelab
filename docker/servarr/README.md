
# Servarr Stack

Suite d’applications automatisant la gestion et le téléchargement de médias.

## Description

La stack Servarr regroupe plusieurs outils utilisés ensemble :

- **Sonarr** → gestion des séries
- **Radarr** → gestion des films
- **Prowlarr** → gestion des indexers

Ces services permettent d’automatiser :

- Recherche de contenu
- Téléchargement
- Organisation des fichiers
- Intégration avec Jellyfin / Emby

## Accès

- Sonarr : http://localhost:8989
- Radarr : http://localhost:7878
- Prowlarr : http://localhost:9696

## Fichiers

- `docker-compose.yml`
- `.env.example`

## Configuration

```bash
cp .env.example .env
