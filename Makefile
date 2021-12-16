all: build

include .env
export

build:
	docker build --build-arg NODE_VERSION=$(NODE_VERSION) --build-arg NODE_DISTRIBUTION=$(NODE_DISTRIBUTION) --build-arg GO_VERSION=$(GO_VERSION) --build-arg GO_DISTRIBUTION=$(GO_DISTRIBUTION) --no-cache=true -t mheers/node-go:$(NODE_VERSION)-$(GO_VERSION)-$(NODE_DISTRIBUTION) .

push:
	docker push mheers/node-go:$(NODE_VERSION)-$(GO_VERSION)-$(NODE_DISTRIBUTION)
