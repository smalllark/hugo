FROM alpine:3.10
LABEL maintainer="smalllark@gmail.com"

ENV HUGO_VERSION 0.57.2
ENV HUGO_RESOURCE hugo_extended_${HUGO_VERSION}_Linux-64bit

ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_RESOURCE}.tar.gz /tmp/

RUN tar -xvzf /tmp/${HUGO_RESOURCE}.tar.gz -C /tmp/ \
    && mv /tmp/hugo /usr/bin/hugo && rm -rf /tmp/*
