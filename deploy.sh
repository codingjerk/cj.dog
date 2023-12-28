#!/usr/bin/env sh

set -Eeuo pipefail

docker build --tag cj.dog .

docker stop cj.dog || true
docker rm cj.dog || true

docker run --detach --publish=80:80 --name=cj.dog --restart=always cj.dog
