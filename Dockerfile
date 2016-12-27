FROM alpine:3.5
MAINTAINER smalllark@gmail.com

ENV HUGO_VERSION 0.18
ENV HUGO_BINARY hugo_${HUGO_VERSION}_linux_amd64
ENV HUGO_RESOURCE hugo_${HUGO_VERSION}_Linux-64bit

ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_RESOURCE}.tar.gz /tmp/

RUN tar -xvzf /tmp/${HUGO_RESOURCE}.tar.gz -C /tmp/ \
    && mv /tmp/${HUGO_BINARY}/${HUGO_BINARY} /usr/bin/hugo && rm -rf /tmp/hugo*
