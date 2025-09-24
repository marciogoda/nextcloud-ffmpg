ARG VERSION="31.0.9"

FROM nextcloud:${VERSION}-apache AS base

SHELL ["/bin/bash", "-c"]

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install imagemagick-common ffmpeg libmagickcore-dev -y && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean