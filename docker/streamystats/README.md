# StreamyStats

Dashboard de statistiques et d’analyse pour serveur multimédia.

## Description

StreamyStats permet d’obtenir une vue détaillée de l’activité d’un serveur multimédia via une interface web moderne.

Cette stack comprend :

- VectorChord / PostgreSQL pour la base de données
- un conteneur de migration
- l’application web StreamyStats
- un job server pour les traitements internes

## Accès

- Web UI : http://localhost:3300

## Fichiers

- `docker-compose.yml`
- `.env.example`

## Configuration

```bash
cp .env.example .env
