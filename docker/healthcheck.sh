#!/bin/bash

services=(
  "https://jellyfin.elfantome.ovh"
  "https://emby.elfantome.ovh"
)

for s in "${services[@]}"; do
  curl -s --head $s | head -n 1
done
