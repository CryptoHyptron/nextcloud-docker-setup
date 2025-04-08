#!/bin/bash

DATA_PATH="/mnt/nextcloud-data"

if mountpoint -q "$DATA_PATH"; then
  echo "✅ Dysk zewnętrzny podłączony – uruchamiam Nextclouda..."
  cd ~/nextcloud-docker
  docker compose up -d
else
  echo "⚠️  Dysk zewnętrzny NIE jest podłączony – zatrzymuję uruchamianie."
  exit 1
fi
