
.PHONY: up stop down logs configure
up: 
   ./up.sh
stop: 
	./stop.sh
down:
	docker-compose -f gitlab.yml -f portainer.yml -f jenkins.yml -f registry.yml -f nexus.yml down
logs:
	./logs.sh
configure:
	./configure.sh
