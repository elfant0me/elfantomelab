# Jellystat

Dashboard de statistiques pour Jellyfin, avec suivi des utilisateurs, lectures et activité globale du serveur.

## Description

Jellystat permet d’obtenir des statistiques détaillées sur un serveur Jellyfin :

- activité des utilisateurs
- historiques de lecture
- temps de visionnement
- tendances d’utilisation
- sauvegardes de données

Cette stack utilise :
- Jellystat
- PostgreSQL

## Accès

- Web UI : http://localhost:3000

## Fichiers

- `docker-compose.yml`
- `.env.example`

## Configuration

Copier le fichier d’exemple :

```bash
cp .env.example .env
