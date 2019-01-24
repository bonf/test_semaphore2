#!/bin/bash
set -e

echo "START_WEB"

# Remove a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid

rails server -b 0.0.0.0:$PORT