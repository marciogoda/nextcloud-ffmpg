#!/bin/bash

version=$1

echo building "marciogoda/nextcloud:$version-apache"

systemctl start docker

docker run --privileged --rm tonistiigi/binfmt --install all

docker buildx build --platform linux/arm64 --no-cache --build-arg VERSION=$version -t "marciogoda/nextcloud:$version-apache" --push .

systemctl stop docker