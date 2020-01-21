FROM phusion/baseimage:0.11
LABEL maintainer="smalllark@gmail.com"

RUN apt-get install -y git

ENV HUGO_VERSION 0.62.2
ENV HUGO_RESOURCE hugo_extended_${HUGO_VERSION}_Linux-64bit

ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_RESOURCE}.tar.gz /tmp/

RUN tar -xvzf /tmp/${HUGO_RESOURCE}.tar.gz -C /tmp/ \
    && mv /tmp/hugo /usr/bin/hugo && rm -rf /tmp/*
