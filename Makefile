COMPOSE_DEV := docker compose -f docker-compose.dev.yaml
URL         := http://localhost:8080

.DEFAULT_GOAL := up

.PHONY: up rebuild build down restart logs ps sh gallery clean help

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

## gallery: Optimize new photos dropped in assets/gallery/ for the photo wall
gallery:
	docker run --rm -u "$$(id -u):$$(id -g)" -e HOME=/tmp \
	  -v "$$PWD:/site" -w /site python:3.12-slim \
	  sh -c "pip install --quiet --target /tmp/pylibs Pillow && PYTHONPATH=/tmp/pylibs python3 scripts/optimize-gallery.py"

## clean: Stop the container and remove its image and volumes
clean:
	$(COMPOSE_DEV) down --rmi local --volumes

## help: List available targets
help:
	@grep -E '^## ' $(MAKEFILE_LIST) | sed 's/^## /  /'
