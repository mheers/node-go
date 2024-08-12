ARG NODE_VERSION=18.20.4
ARG NODE_DISTRIBUTION=bookworm

ARG GO_VERSION=1.22
ARG GO_DISTRIBUTION=bookworm

FROM golang:${GO_VERSION}-${GO_DISTRIBUTION} AS go

FROM node:${NODE_VERSION}-${NODE_DISTRIBUTION}

# install some dependencis
#RUN apt update && apt install -y unzip git curl python2

# install go
COPY --from=go /usr/local/go/ /usr/local/go/
RUN ln -s /usr/local/go/bin/go /usr/local/bin/
