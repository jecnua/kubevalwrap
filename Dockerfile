FROM golang:1.8.3

MAINTAINER jecnua "fabrizio.sabatini.it@gmail.com"

RUN wget https://github.com/garethr/kubeval/releases/download/0.1.0/kubeval-darwin-amd64.tar.gz
RUN tar xf kubeval-darwin-amd64.tar.gz
RUN cp bin/darwin/amd64/kubeval /usr/local/bin

# ENV

# COPY

# Metadata params
ARG BUILD_DATE
ARG VERSION
ARG VCS_URL
ARG VCS_REF

# Metadata
LABEL org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.name="" \
  org.label-schema.description="" \
  org.label-schema.url="" \
  org.label-schema.vcs-url=$VCS_URL \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.version=$VERSION \
  com.jecnua.docker.dockerfile="/Dockerfile" \
  com.jecnua.license=""
