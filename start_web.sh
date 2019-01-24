#!/bin/bash
set -e

echo "Entrypoint"

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

rails server -b 0.0.0.0:$PORT