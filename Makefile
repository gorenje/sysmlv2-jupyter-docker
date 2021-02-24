.PHONY: build
build: ## build standalone Jupyter image
	docker build -t sysml.standalone .

.PHONY: build-api
build-api: ## build the API server docker image
	docker build -t sysml.api -f Dockerfile.api .

.PHONY: build-jupyter
build-jupyter: ## build the API+Jupyter Jupyter docker image
	docker build -t sysml.jupyter -f Dockerfile.jupyter .

.PHONY: create-periphery
create-periphery: ## Create network and volume for docker-compose
	-docker network create thenetwork
	docker volume create postgresdbserver

.PHONY: spin-up
spin-up: create-periphery build-jupyter build-api ## spin all servers up
	docker-compose -f docker-compose.yml up

.PHONY: run
run: build # run the standalone jupyter image
	docker run -p 8888:8888 -t sysml.standalone

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
