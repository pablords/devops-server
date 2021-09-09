include .env

.PHONY: up
up-dev:
	docker-compose up -d

.PHONY: down
down-dev:
	docker-compose down


.PHONY: logs
down-dev:
	docker-compose logs
