#!/usr/bin/env bash

docker compose down
docker image rm devnovatritiumbotv2-web devnovatritiumbotv2-signal devnovatritiumbotv2-tritium girlboss-web girlboss-signal girlboss-tritium docker.dragonflydb.io/dragonflydb/dragonfly mongodb/mongodb-community-server oven/bun -f
git pull origin master
docker compose up -d --build