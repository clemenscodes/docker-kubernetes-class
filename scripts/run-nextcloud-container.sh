#!/bin/sh

scripts/build-nextcloud.sh

docker run -d \
    --env-file env/mariadb.env \
    --env-file env/nextcloud.env \
    --name nextcloud \
    -p 80:80 \
    -p 443:443 \
    -v /var/lib/docker/volumes/nextcloud:/var/www/html \
    --link mariadb:gcc \
    nextcloud:gcc
