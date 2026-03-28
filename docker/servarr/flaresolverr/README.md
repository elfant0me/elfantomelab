# FlareSolverr

Service permettant de contourner les protections Cloudflare pour les applications comme Prowlarr, Sonarr et Radarr.

## Description

FlareSolverr agit comme un proxy intermédiaire capable de résoudre les challenges Cloudflare (JavaScript, captcha, etc.).

Il est principalement utilisé avec :

- Prowlarr
- Sonarr
- Radarr

## Accès

- API : http://localhost:8191

## Fichiers

- `docker-compose.yml`
- `.env.example`

## Configuration

```bash
cp .env.example .env
