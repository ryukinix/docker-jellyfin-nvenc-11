PROJECT_NAME := jellyfin
VERSION := latest
DOCKER_IMG := ryukinix/$(PROJECT_NAME)
DOCKER_REGISTRY := docker.io
REGISTRY_IMG := $(DOCKER_REGISTRY)/$(DOCKER_IMG)
JELLYFIN_VERSION := latest

build:
	docker build --pull --build-arg JELLYFIN_VERSION=$(JELLYFIN_VERSION) -t $(DOCKER_IMG) .

publish: build
	docker tag $(DOCKER_IMG) $(REGISTRY_IMG):$(VERSION)
	docker push $(REGISTRY_IMG):$(VERSION)
