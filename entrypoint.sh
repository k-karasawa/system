#!/bin/sh

set -u

rm -f tmp/pids/server.pid

bundle exec rails server --port 3000 --binding '0.0.0.0'
