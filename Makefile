.PHONY: build
build: ## build the docker image using the Dockerfile
	docker build -t sysml .

.PHONY: run
run: build ## run the image built, will build the image first
	docker run -p 8888:8888 -t sysml:latest

.PHONY: run
enter: ## enter a runnning container
	docker exec -it $$(docker ps | grep sysml | awk '// { print $$1 }') /bin/bash

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
