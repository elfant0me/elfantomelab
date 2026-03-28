# AdGuard Home (Native)

Service DNS / blocage publicitaire installé nativement sur un Raspberry Pi.

## Description

Dans mon homelab, AdGuard Home n'est pas déployé via Docker.  
Il est installé directement sur l’hôte pour simplifier l’accès réseau et la gestion DNS/DHCP.

## Rôle dans l’infrastructure

- DNS local
- blocage de publicités / trackers
- DHCP local
- résolution réseau pour les appareils du LAN

## Pourquoi en natif ?

AdGuard Home utilise des ports réseau sensibles et centraux, notamment :

- `53/tcp`
- `53/udp`
- `67/udp` (DHCP, si activé)
- `68/udp`
- interface web d’administration

Le déploiement natif simplifie :

- la gestion du DNS local
- l’intégration DHCP
- l’accès direct au réseau
- la stabilité sur un Raspberry Pi dédié

## Notes

- Hébergé sur un Raspberry Pi 4
- Utilisé comme DNS principal du réseau local
- Intégré au homelab avec les autres services self-hosted
