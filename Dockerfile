FROM golang:1.8.3

MAINTAINER jecnua "fabrizio.sabatini.it@gmail.com"

WORKDIR /go/src/app
RUN git clone https://github.com/garethr/kubeval.git
WORKDIR /go/src/app/kubeval/
RUN go get github.com/garethr/kubeval/
RUN make linux
RUN ln -s /go/src/app/kubeval/bin/linux/amd64/kubeval kubeval

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

ENTRYPOINT ["/go/src/app/kubeval/bin/linux/amd64/kubeval"]
