#!/usr/bin/env sh

set -Eeuo pipefail

docker stop cj.dog || true
docker rm cj.dog || true

docker build --tag cj.dog .
docker run --detach --publish=80:80 --name=cj.dog --restart=always cj.dog
