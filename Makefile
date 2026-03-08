PROJECT_NAME := jellyfin
VERSION := latest
DOCKER_IMG := ryukinix/$(PROJECT_NAME)
DOCKER_REGISTRY := docker.io
REGISTRY_IMG := $(DOCKER_REGISTRY)/$(DOCKER_IMG)
JELLYFIN_VERSION := latest
YELLOW=\e[33m
RED=\e[31m
NC=\e[0m

build:
	docker build --pull --build-arg JELLYFIN_VERSION=$(JELLYFIN_VERSION) -t $(DOCKER_IMG) .
	@echo -e "[$(YELLOW)WARN$(NC)] To get update from jellyfin you need to run 'make publish'"

publish: build
	docker tag $(DOCKER_IMG) $(REGISTRY_IMG):$(VERSION)
	docker push $(REGISTRY_IMG):$(VERSION)
