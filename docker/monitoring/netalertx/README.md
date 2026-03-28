# NetAlertX

Outil de surveillance réseau permettant de détecter les appareils connectés au réseau local et de suivre leur activité.

## Description

NetAlertX analyse le réseau local pour repérer :

- nouveaux appareils
- appareils hors ligne
- changements d’état
- activité réseau globale

Il est particulièrement utile dans un homelab pour surveiller les équipements, téléphones, TV, consoles et autres appareils connectés.

## Accès

- Web UI : http://localhost:20211
- GraphQL : http://localhost:20212

## Fichiers

- `docker-compose.yml`
- `.env.example`

## Configuration

```bash
cp .env.example .env
