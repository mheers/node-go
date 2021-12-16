ARG NODE_VERSION
ARG NODE_DISTRIBUTION

ARG GO_VERSION
ARG GO_DISTRIBUTION

FROM golang:${GO_VERSION}-${GO_DISTRIBUTION} as go

FROM node:${NODE_VERSION}-${NODE_DISTRIBUTION}

# install some dependencis
#RUN apt update && apt install -y unzip git curl python2

# install go
COPY --from=go /usr/local/go/ /usr/local/go/
RUN ln -s /usr/local/go/bin/go /usr/local/bin/
