COMPOSE_DEV := docker compose -f docker-compose.dev.yaml
URL         := http://localhost:8080

.DEFAULT_GOAL := up

.PHONY: up rebuild build down restart logs ps sh clean help

## up: Start the dev container (index.html and assets are live-mounted, no rebuild needed)
up:
	$(COMPOSE_DEV) up -d
	@echo "Site available at $(URL)"

## rebuild: Force an image rebuild and restart the dev container
rebuild:
	$(COMPOSE_DEV) up --build -d
	@echo "Site available at $(URL)"

## build: Rebuild the image without starting the container
build:
	$(COMPOSE_DEV) build

## down: Stop and remove the dev container
down:
	$(COMPOSE_DEV) down

## restart: Restart the dev container from scratch
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
