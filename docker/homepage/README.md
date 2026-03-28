# Homepage

Dashboard moderne pour centraliser tous les services du homelab.

## Description

Homepage est un dashboard self-hosted permettant de regrouper :

- services (Jellyfin, Sonarr, etc.)
- monitoring (Glances, Uptime Kuma)
- raccourcis utiles
- widgets (Docker, système, API)

Le tout via une interface propre et personnalisable avec des fichiers YAML.

## Accès

- Web UI : http://localhost:4000

## Fichiers

- `docker-compose.yml`
- `.env.example`
- `/config` → fichiers de configuration (services.yaml, widgets.yaml, etc.)

## Configuration

```bash
cp .env.example .env
