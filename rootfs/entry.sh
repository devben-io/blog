#!/usr/bin/env bash

set -e          # exit on command errors
set -o nounset  # abort on unbound variable
set -o pipefail # capture fail exit codes in piped commands

DOLLAR="$"

export DOLLAR

rm /etc/nginx/conf.d/default.conf || :
envsubst </etc/nginx/conf.d/default.conf.tpl >/etc/nginx/conf.d/default.conf

echo "helloit:$(openssl passwd -apr1 $AUTH_PW)" >/etc/nginx/.htpasswd

exec nginx -g "daemon off;"
