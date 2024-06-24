FROM ubuntu:24.04

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US \
    LC=en_US.UTF-8 \
    DEBIAN_FRONTEND=noninteractive

## Image init
RUN apt-get update && apt-get upgrade && \
    apt-get install -y curl binutils vim fio

## cleanup
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workdir/
