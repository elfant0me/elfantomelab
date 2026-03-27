#!/bin/bash

services=(
  "https://jellyfin.elfantome.ovh"
  "https://emby.elfantome.ovh"
)

for s in "${services[@]}"; do
  if curl -s --head $s | grep "200 OK" > /dev/null; then
    echo "[OK] $s"
  else
    echo "[DOWN] $s"
  fi
done
