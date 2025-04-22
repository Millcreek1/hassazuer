#!/usr/bin/env bash
set -e

# First-run initialization
if [ ! -f "/config/.initialized" ]; then
  echo "Initializing AzuraCast..."
  mkdir -p /config/letsencrypt /config/media
  /var/azuracast/docker.sh install
  touch /config/.initialized
fi

# Start AzuraCast services
echo "Starting AzuraCast..."
exec /var/azuracast/docker.sh start
