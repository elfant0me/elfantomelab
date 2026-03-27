# 🐳 Docker Stack — eLFantomeLab

Ce dossier contient les configurations Docker utilisées pour déployer et gérer les services du homelab.

L’ensemble de l’infrastructure repose sur Docker et Docker Compose afin d’assurer:
- isolation des services
- facilité de déploiement
- maintenance simplifiée
- évolutivité

---

## 🧱 Architecture

Les services sont répartis en plusieurs catégories:

### 🎬 Media
- Jellyfin (streaming vidéo/audio)
- Emby (alternative streaming)
- Navidrome (streaming musique)

### 📦 Media Management (ARR Stack)
- Radarr (films)
- Sonarr (séries)
- Prowlarr (indexeur)
- qBittorrent (téléchargement)
- FlareSolverr (bypass protection)

### 📊 Monitoring
- Uptime Kuma (disponibilité)
- Glances (ressources système)
- Beszel (monitoring)
- NetAlertX (surveillance réseau)
- What's Up Docker (mises à jour)

### 🧰 Outils & Accès
- Portainer (gestion Docker)
- Homepage (dashboard)
- Wizarr (invitation utilisateurs)
- FileBrowser (gestion fichiers)
- Termix (SSH web)
- Notifiarr (notifications Discord)

### 🌐 Réseau
- NGINX Proxy Manager (reverse proxy)
- Gestion HTTPS (Let's Encrypt)
