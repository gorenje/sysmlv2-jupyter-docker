.PHONY: build
build: ## build the docker image using the Dockerfile
	docker build -t sysml .

.PHONY: build-api
build-api: ## build the docker image using the Dockerfile
	docker build -t sysml.api -f Dockerfile.api .

.PHONY: create-periphery
create-periphery: ## Create network and volume for docker-compose
	-docker network create thenetwork
	docker volume create postgresdbserver

.PHONY: spin-up
spin-up: create-periphery build build-api ## spin all servers up
	docker-compose -f docker-compose.yml up

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
