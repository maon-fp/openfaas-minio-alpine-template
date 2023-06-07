#!/bin/sh

# Read secrets from file
{ IFS= read -rd '' ACCESSKEY </var/openfaas/secrets/ACCESSKEY.txt;}
{ IFS= read -rd '' SECRETKEY </var/openfaas/secrets/SECRETKEY.txt;}

# Create alias to be useable with minio-client
mc alias set $ALIAS $URL $ACCESSKEY $SECRETKEY

sh ./function/handler.sh

