# eLFantomeLab

> Infrastructure homelab auto-hébergée démontrant des compétences concrètes en Linux, Docker, réseau et DevOps.

Infrastructure basée sur Linux, Docker et reverse proxy, permettant d’exposer plusieurs services web sécurisés via des sous-domaines personnalisés.

---

## Aperçu

Ce projet représente une infrastructure personnelle complète, inspirée d’un environnement de production simplifié.

- Domaine : elfantome.ovh  
- Accès public via HTTPS  
- Services conteneurisés  
- Monitoring et supervision  
- Accès distant sécurisé  

---

## Architecture

- Serveur principal : OptiPlex 3060 (Linux Mint)  
- Nœud secondaire : Raspberry Pi 4 (Debian)  
- Reverse Proxy : NGINX Proxy Manager  
- DNS + sous-domaines personnalisés  
![Network](screenshots/homelabdiagram.png)
---

## Services déployés

### Media
- Jellyfin  
- Emby  
- Navidrome
- Deemix

### Gestion média
- Radarr  
- Sonarr  
- Prowlarr  
- qBittorrent  
- Wizarr  

### Réseau
- AdGuard  
- Tailscale  
- NetAlertX  

### Monitoring
- Uptime Kuma  
- Glances  
- Beszel  
- What's Up Docker  

### Outils
- Portainer  
- FileBrowser  
- Web SSH  

---

## ⚙️ Fonctionnalités

- Reverse proxy avec sous-domaines  
- HTTPS (Let’s Encrypt)  
- Accès distant sécurisé  
- Monitoring en temps réel  
- Dashboard centralisé  
- Infrastructure multi-services  

---

## 🧠 Compétences démontrées

- Administration Linux  
- Docker / Docker Compose  
- Réseau et DNS  
- Reverse proxy  
- SSL / HTTPS  
- Monitoring et logs  
- Auto-hébergement  
- Troubleshooting  

---

## Objectif

Démontrer des compétences concrètes en infrastructure IT, sysadmin et DevOps junior.

---

## Screenshots

![Dashboard](screenshots/dashboard.jpg)  

---

## Docker Stacks

Les services sont organisés en stacks Docker Compose indépendantes.

- **Servarr**  
  Stack de gestion média incluant Radarr, Sonarr et Prowlarr.

- **Monitoring** *(en cours)*  
  Stack de supervision incluant Uptime Kuma, Glances, NetAlertX, Beszel et What's Up Docker.
  
---

## Status

### Complété
- Architecture documentée  
- Diagramme réseau  
- Docker stacks (servarr, monitoring, tools, network)  
- Fichiers `.env.example`  
- Quick Start  

### En cours
- Documentation détaillée des stacks  
- Amélioration du monitoring  
- Ajout des stacks media et autres services  

---

## Auteur

François Gilbert  
Technicien informatique autodidacte
