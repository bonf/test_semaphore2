#!/bin/bash
set -e
yarn check || yarn install
bundle check || bundle install
rm -f tmp/pids/server.pid
bundle exec rails s -b 0.0.0.0
