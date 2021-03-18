FROM mhart/alpine-node:14
LABEL maintainer="smalllark@gmail.com"

RUN apk update && apk upgrade && \
    apk add --no-cache git && \
    npm install -g postcss-cli autoprefixer

ENV HUGO_VERSION 0.81.0
ENV HUGO_RESOURCE hugo_extended_${HUGO_VERSION}_Linux-64bit

ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_RESOURCE}.tar.gz /tmp/

RUN tar -xvzf /tmp/${HUGO_RESOURCE}.tar.gz -C /tmp/ \
    && mv /tmp/hugo /usr/bin/hugo && rm -rf /tmp/*
