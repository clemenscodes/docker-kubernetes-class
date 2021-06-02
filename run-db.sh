#!/bin/sh

./build-db.sh

docker run -d \
    --env-file mariadb.env \
    -p 3306:3306 \
    -v db:/var/lib/mysql \
    --name mariadb \
    mariadb:gcc