# Docker Infrastructure — eLFantomeLab

Ce dossier contient les configurations Docker utilisées pour déployer les services du homelab.

L’objectif est de fournir une infrastructure modulaire, maintenable et reproductible basée sur Docker Compose.

---

## Objectif

- Isoler les services
- Simplifier le déploiement
- Faciliter la maintenance
- Permettre l’évolution de l’infrastructure

---

## Organisation des stacks

Les services sont séparés en plusieurs stacks logiques:

###  Media
- Jellyfin
- Emby
- Navidrome
- Deemix

### Servarr Stack
- Radarr
- Sonarr
- Prowlarr
- FlareSolverr

### Monitoring
- Uptime Kuma
- JellyStat
- StreamyStats
- NPM GoAccess
- Glances
- Beszel
- NetAlertX
- What's Up Docker

### Tools
- Portainer
- Homepage
- Wizarr
- FileBrowser
- Termix
- Notifiarr

### Network
- NGINX Proxy Manager

---

