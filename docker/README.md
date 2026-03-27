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

### 🎬 Media
- Jellyfin
- Emby
- Navidrome

### 📦 ARR Stack
- Radarr
- Sonarr
- Prowlarr
- qBittorrent
- FlareSolverr

### 📊 Monitoring
- Uptime Kuma
- Glances
- Beszel
- NetAlertX
- What's Up Docker

### 🧰 Tools & Access
- Portainer
- Homepage
- Wizarr
- FileBrowser
- Termix
- Notifiarr

### 🌐 Reverse Proxy
- NGINX Proxy Manager

---

## Déploiement

```bash
docker compose up -d
