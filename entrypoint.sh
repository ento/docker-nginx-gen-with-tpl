#!/bin/bash

# assume that nginx container is linked as 'nginx'
set -e
echo $@
exec /usr/local/bin/docker-gen -notify-sighup $(echo $NGINX_NAME | tail -c +2) $@
