FROM node:10-alpine

ENV VERSION 0.54.0

RUN apk add --no-cache openssl curl \
    && curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz | tar -xz \
    && mv hugo /usr/bin/hugo
