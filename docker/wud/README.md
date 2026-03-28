# WhatsUpDocker (WUD)

Outil permettant de surveiller les mises à jour des conteneurs Docker.

## Description

WhatsUpDocker (WUD) vérifie automatiquement si de nouvelles versions d’images Docker sont disponibles.

Fonctionnalités :

- détection des mises à jour
- notifications (Discord)
- support multi-registres (Docker Hub, GHCR, LSCR)
- gestion des tags

## Accès

- Web UI : http://localhost:3200

## Fichiers

- `docker-compose.yml`
- `.env.example`

## Configuration

```bash
cp .env.example .env
