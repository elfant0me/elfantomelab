
# Emby
Serveur multimédia permettant d’organiser et diffuser films, séries et musique vers plusieurs appareils (TV, mobile, web).

## Description
Emby est un media server basé sur un modèle client-serveur qui permet de streamer du contenu sur différents appareils (Smart TV, mobile, navigateur, etc.).

Contrairement à Jellyfin, certaines fonctionnalités avancées nécessitent un abonnement Emby Premiere.
## Ports par défaut

- HTTP : 8097
- HTTPS : 8922

Modifiable via `.env`
## Accès
- Web : http://localhost:8097
- Reverse proxy recommandé (Nginx Proxy Manager)

## Fichiers

- `docker-compose.yml`
- `.env.example`

## Configuration

Copier le fichier `.env.example` :

```bash
cp .env.example .env
