# Portainer

Interface web pour gérer les conteneurs Docker et les stacks.

## Description

Portainer est une interface graphique permettant de gérer facilement :

- conteneurs Docker
- stacks Docker Compose
- volumes
- réseaux
- images

Il simplifie énormément l’administration d’un homelab.

## Accès

- Web UI : https://localhost:9443

## Ports

- `9443` → interface web (HTTPS)
- `8000` → Edge agent (optionnel)

## Fichiers

- `docker-compose.yml`
- `.env.example`

## Configuration

```bash
cp .env.example .env
