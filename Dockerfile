FROM node:15.14.0-buster

# install some dependencis
#RUN apt update && apt install -y unzip git curl python2

# install go
COPY --from=golang:1.16.4-buster /usr/local/go/ /usr/local/go/
RUN ln -s /usr/local/go/bin/go /usr/local/bin/
