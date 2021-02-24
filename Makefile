# SysMLv2 Release to use.
release = 2020-12

.PHONY: build-api
build-api: ## build the API server docker image
	docker build -t sysml.api -f Dockerfile.api --build-arg RELEASE=$(release) .

.PHONY: build-jupyter
build-jupyter: ## build the API+Jupyter Jupyter docker image
	docker build -t sysml.jupyter -f Dockerfile.jupyter --build-arg RELEASE=$(release) .

.PHONY: create-periphery
create-periphery: ## Create network and volume for docker-compose
	-docker network create thenetwork
	docker volume create postgresdbserver

.PHONY: spin-up
spin-up: create-periphery build-jupyter build-api ## spin all servers up
	docker-compose -f docker-compose.yml up

.PHONY: build-standalone
build-standalone: ## build standalone Jupyter image
	docker build -t sysml.standalone --build-arg RELEASE=$(release) .

.PHONY: run-standalone
run-standalone: build-standalone # run the standalone jupyter image
	docker run -p 8888:8888 -t sysml.standalone jupyter lab --ip 0.0.0.0 --port 8888

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
