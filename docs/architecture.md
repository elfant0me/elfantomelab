# 🏗️ Architecture - ElfantomeLab

## 📌 Vue d’ensemble
Ce document décrit l’architecture interne de mon environnement homelab, incluant le réseau, l’infrastructure et les services hébergés.

## 🖥️ Infrastructure principale

### 🧠 Serveur principal
- **Appareil :** Dell OptiPlex 3060  
- **OS :** Linux Mint  
- **Rôle :** Hôte Docker pour l’ensemble des services  

### 🍓 Raspberry Pi 4
- Gestion des services réseau :
  - DNS filtré (AdGuard Home)
  - Serveur DHCP

---

## 🐳 Services conteneurisés (Docker)

Tous les services sont déployés avec Docker afin d’assurer isolation, portabilité et facilité de gestion.

### 🔁 Reverse Proxy
- **Nginx Proxy Manager**
  - Point d’entrée central
  - Gestion du HTTPS (Let’s Encrypt)
  - Routage vers les services internes

---

### 🎬 Stack multimédia
- **Jellyfin** → Streaming vidéo  
- **Emby** → Compatibilité TV Samsung  
- **Navidrome** → Streaming musical  

---

### 📥 Automatisation (Servarr)
- **Sonarr** → Séries  
- **Radarr** → Films  
- **Prowlarr** → Gestion des indexeurs  
- **qBittorrent** → Téléchargements  

---

### 🧰 Outils
- **Homepage** → Tableau de bord  
- **WUD (WhatsUpDocker)** → Surveillance des mises à jour  
- **Portainer** → Gestion des conteneurs  

---

## 🔐 Accès externe et sécurité

### 🌍 Accès public
- Domaine : `elfantome.ovh`
- Gestion via Nginx Proxy Manager
- HTTPS activé (Let’s Encrypt)

### 🔒 Accès privé
- **Tailscale (VPN)**
  - Utilisé pour :
    - Accès administrateur
    - Services non exposés publiquement
  - Accès distant sécurisé (approche Zero Trust)

### 🚫 Exposition limitée
- Les services sensibles (dashboard, admin, etc.) ne sont PAS exposés publiquement
- Accessibles uniquement via Tailscale

---

## 📡 DNS et routage

- DNS interne géré par **AdGuard Home**
- Routage des domaines via :
  - Nginx Proxy Manager
  - Fournisseur DNS externe

---

## 📊 Philosophie de conception

- 🔒 Sécurité avant tout (exposition minimale)
- 🧩 Architecture modulaire (Docker)
- 🔄 Facilement évolutif
- 🛠️ Écosystème 100% self-hosted

---

## 🚀 Améliorations futures

- [ ] Centralisation des logs
- [ ] Amélioration des backups
- [ ] Haute disponibilité (objectif long terme)

---

## 🧠 Notes

Ce homelab est conçu pour simuler un environnement IT réel, avec un focus sur :
- Administration système
- Réseautique
- Conteneurisation
- Accès distant sécurisé
