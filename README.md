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

## Services principaux

- Streaming média (Jellyfin, Emby, Navidrome)
- Automatisation (Radarr, Sonarr, Prowlarr)
- Réseau et sécurité (NGINX Proxy Manager, AdGuard, Tailscale)
- Monitoring (Uptime Kuma, Glances, Beszel)
- Administration (Portainer, FileBrowser, Homepage)

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
Interface du dashboard permettant l’accès rapide aux services.
![Dashboard](screenshots/dashboard.jpg)  

---

## Docker Stacks

L’infrastructure est organisée en plusieurs stacks logiques afin de séparer les responsabilités et faciliter la maintenance.
> Certains services sont exposés publiquement via HTTPS (NGINX Proxy Manager), tandis que d’autres sont accessibles uniquement via Tailscale pour des raisons de sécurité.

### Media
Services multimédia accessibles via le reverse proxy (NGINX Proxy Manager).

- Jellyfin (streaming vidéo)
- Emby (compatibilité TV Samsung)
- Navidrome (streaming musique)
- Deemix (téléchargement musique)

---

### Monitoring
Outils de supervision, statistiques et disponibilité des services.

- Uptime Kuma (monitoring des services)
- Glances (monitoring système)
- Beszel (dashboard système)
- Jellystat (stats Jellyfin)
- NetAlertX (détection appareils réseau)
- Streamystats (statistiques streaming)
- NPM GoAccess (logs reverse proxy)
- WUD (mise à jour des containers)

---

### Network
Gestion de l’accès réseau et exposition des services.

- NGINX Proxy Manager (reverse proxy + HTTPS)
- Gestion des sous-domaines
- Configuration via `.env`

---

### Servarr
Automatisation du téléchargement et gestion de contenu.

- Radarr (films)
- Sonarr (séries)
- Prowlarr (indexeurs)
- qBittorrent (téléchargement)
- FlareSolverr (contournement Cloudflare)

---

### Tools
Outils utilitaires pour la gestion et l’administration du serveur.

- Portainer (gestion Docker)
- FileBrowser (gestion fichiers)
- Homepage (dashboard)
- Wizarr (gestion utilisateurs)
- Maintainerr (gestion bibliothèque)
- Notifiarr (notifications)
- Termix (terminal web)
- Newtarr (automation complémentaire)

---

### Organisation
Chaque service possède :
- son propre dossier
- un `docker-compose.yml`
- un `README.md`
- une configuration isolée

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
## Quick Start

> **Prérequis :** Docker & Docker Compose installés, un domaine configuré (ex: OVH), ports 80/443 ouverts sur ton routeur.

### 1. Cloner le dépôt
```bash
git clone https://github.com/elfant0me/elfantomelab.git
cd elfantomelab
```

---

### 2. Variables d'environnement globales

Copie le fichier `.env.example` à la racine — il contient les variables partagées entre toutes les stacks :
```bash
cp .env.example .env
nano .env
```
```env
DOMAIN=tondomain.com       # Ton domaine (ex: elfantome.ovh)
TZ=America/Toronto         # Ton fuseau horaire
PUID=1000                  # Résultat de : id -u
PGID=1000                  # Résultat de : id -g
```

> 💡 Pour trouver ton PUID/PGID : `id $(whoami)`

---

### 3. Déployer les stacks

Chaque service a son propre dossier avec un `docker-compose.yml` et un `.env.example`.  
Le pattern est toujours le même :
```bash
cd docker/<stack>/<service>
cp .env.example .env
nano .env          # Remplis les valeurs spécifiques au service
docker compose up -d
```

**Démarre dans cet ordre — le réseau doit être en place en premier :**

#### Network (obligatoire en premier)
```bash
cd docker/network/nginx-proxy-manager
cp .env.example .env && nano .env
docker compose up -d

```

#### Monitoring
```bash
# Répète pour chaque service : beszel, uptime-kuma, glances, etc.
cd docker/monitoring/beszel
cp .env.example .env && nano .env
docker compose up -d
```

#### Tools
```bash
# portainer, filebrowser, homepage, etc.
cd docker/tools/portainer
cp .env.example .env && nano .env
docker compose up -d
```

#### Servarr
```bash
# radarr, sonarr et prowlarr sont dans le même compose
cd docker/servarr
cp .env.example .env && nano .env
docker compose up -d
```

#### Media
```bash
# jellyfin, navidrome, etc.
cd docker/media/jellyfin
cp .env.example .env && nano .env
docker compose up -d
```

---

### 4. Vérifier que tout tourne
```bash
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
```

---

### 5. Accéder à NGINX Proxy Manager

Configure tes sous-domaines via l'interface web :  
`http://IP-DU-SERVEUR:81`

| Champ | Valeur par défaut |
|---|---|
| Email | `admin@example.com` |
| Mot de passe | `changeme` |

> **Change ces credentials immédiatement** après la première connexion!

---

> 📖 Chaque service a son propre `README.md` avec les détails de configuration spécifiques.

## Auteur

François Gilbert  
Technicien informatique autodidacte
