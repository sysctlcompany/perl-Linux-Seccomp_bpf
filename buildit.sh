#!/bin/bash
FEDORA_VERSION=$1
if [ -z "$FEDORA_VERSION" ]; then
   echo "usage $0 <fcversion>"
   echo "$0 40 #builds on fedora 40 container."
   exit 1
fi
podman run --volume "$PWD:/k:z" --rm -it docker.io/library/fedora:"${FEDORA_VERSION}" /k/rpm/buildrpm.sh
