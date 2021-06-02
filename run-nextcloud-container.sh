#!/bin/sh

./build-nextcloud.sh

docker run -d \
    --env-file mariadb.env \
    --env-file nextcloud.env \
    --name nextcloud \
    -p 80:80 \
    -p 443:443 \
    -v nextcloud:/var/www/html \
    --link mariadb:gcc \
    nextcloud:gcc
