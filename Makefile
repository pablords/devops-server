include .env

.PHONY: up
up: 
	sudo rm -rf certificados &&  docker-compose -f http-server.yml -f gitlab.yml -f portainer.yml up -d
.PHONY: down
down:
	docker-compose -f http-server.yml -f gitlab.yml -f portainer.yml down
.PHONY: logs
logs:
	docker-compose -f http-server.yml -f gitlab.yml -f portainer.yml logs -ft --tail=1000

.PHONY: configure
configure:
	./configure.sh
