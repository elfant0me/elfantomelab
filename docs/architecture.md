# Architecture

## Overview

Infrastructure auto-hébergée basée sur:

- Serveur principal: OptiPlex (Linux Mint)
- Noeud secondaire: Raspberry Pi (Debian)

## Réseau

- Reverse proxy (NGINX Proxy Manager)
- Sous-domaines via elfantome.ovh
- Accès externe sécurisé (HTTPS)

## Services

- Media: Jellyfin, Emby
- Arr stack: Radarr, Sonarr, Prowlarr
- Monitoring: Uptime Kuma, Glances
- Réseau: AdGuard, Tailscale
