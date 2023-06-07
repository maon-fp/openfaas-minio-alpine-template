#!/bin/sh

# Read secrets from file
{ IFS= read -rd '' ACCESSKEY </var/openfaas/secrets/aws-access-key-id-secret;}
{ IFS= read -rd '' SECRETKEY </var/openfaas/secrets/aws-secret-access-key-secret;}

# Create alias to be useable with minio-client
mcli alias set $ALIAS $URL $ACCESSKEY $SECRETKEY

sh ./function/handler.sh

