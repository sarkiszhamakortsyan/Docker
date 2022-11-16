#!/bin/sh

sudo systemctl stop systemd-resolved
docker compose up -d
#docker exec pihole ~/github/Docker/pihole/resetpass.sh
docker exec pihole /bin/sh -c "pihole -a -p 1"
