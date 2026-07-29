COMPOSE_DEV := docker compose -f docker-compose.dev.yaml
URL         := http://localhost:8080

.DEFAULT_GOAL := up

.PHONY: up build down restart logs ps sh clean help

## up: Build the image and start the dev container
up:
	$(COMPOSE_DEV) up --build -d
	@echo "Site available at $(URL)"

## build: Rebuild the image without starting the container
build:
	$(COMPOSE_DEV) build

## down: Stop and remove the dev container
down:
	$(COMPOSE_DEV) down

## restart: Rebuild and restart from scratch
restart: down up

## logs: Follow the container logs
logs:
	$(COMPOSE_DEV) logs -f

## ps: Show container status
ps:
	$(COMPOSE_DEV) ps

## sh: Open a shell inside the running container
sh:
	$(COMPOSE_DEV) exec cv sh

## clean: Stop the container and remove its image and volumes
clean:
	$(COMPOSE_DEV) down --rmi local --volumes

## help: List available targets
help:
	@grep -E '^## ' $(MAKEFILE_LIST) | sed 's/^## /  /'
