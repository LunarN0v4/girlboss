#!/usr/bin/env bash

docker compose down
docker image rm arcticgirlboss-web arcticgirlboss-signal arcticgirlboss-tritium girlboss-web girlboss-signal girlboss-tritium docker.dragonflydb.io/dragonflydb/dragonfly mongodb/mongodb-community-server oven/bun -f
git pull origin master
docker compose up -d --build
