# NPM GoAccess

Dashboard web pour analyser les logs de Nginx Proxy Manager avec GoAccess.

## Description

Cette stack permet de visualiser en temps réel les statistiques de trafic :

- visiteurs
- requêtes HTTP
- erreurs
- bande passante
- pays d'origine

Elle se base directement sur les logs générés par Nginx Proxy Manager.

## Accès

- Web UI : http://localhost:7880

## Fichiers

- `docker-compose.yml`
- `.env.example`

## Configuration

```bash
cp .env.example .env
