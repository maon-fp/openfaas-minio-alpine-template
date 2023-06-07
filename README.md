## Get your hands dirty

```
$ faas template pull https://github.com/maon-fp/openfaas-minio-alpine-template
$ faas new --lang openfaas-minio-alpine-template
```

## Setup

Add kubernetes secrets for the MinIO ACCESSKEY (user) and SECRETKEY (password). Reference those in the function description together with URL (url of MinIO instance) and ALIAS (name of connection to later use with the minio-client) as environmental variables:

```yaml
my-fun-name:
  lang: openfaas-minio-alpine-template
  handler: ./functions/import-row-input-csv
  image: registry.maon.eu/maon/cloud/functions/import-row-input-csv:latest
  readonly_root_filesystem: true
  secrets:
    - ACCESSKEY
    - SECRETKEY
  environment:
    - URL: https://my-minio-instance
    - ALIAS: local
```

### Basic example

```sh
mcli cp --recursive local/output/ahi88979cro2zdsvqhle42g3 .
```
