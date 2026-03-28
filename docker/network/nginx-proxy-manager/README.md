# Nginx Proxy Manager

Interface web simple pour gérer un reverse proxy Nginx avec certificats SSL Let's Encrypt.

## Description

Nginx Proxy Manager permet de publier facilement des services self-hosted via une interface web conviviale.

Fonctionnalités principales :

- reverse proxy HTTP / HTTPS
- certificats Let's Encrypt
- redirections
- accès externe simplifié
- gestion des hôtes, redirections et streams

## Accès

- Web UI : http://localhost:81

## Ports

- `80` → HTTP
- `443` → HTTPS
- `81` → interface d’administration

## Fichiers

- `docker-compose.yml`
- `.env.example`

## Configuration

```bash
cp .env.example .env
