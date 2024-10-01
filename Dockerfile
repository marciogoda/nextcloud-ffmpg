FROM nextcloud:29.0.7-apache AS base

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install ffmpeg --no-install-recommends -y && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean