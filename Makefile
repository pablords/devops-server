

.PHONY: up
up: 
	./up.sh

.PHONY: stop
stop: 
	./stop.sh

.PHONY: down
down:
	docker-compose -f http-server.yml -f gitlab.yml -f portainer.yml -f jenkins.yml down

.PHONY: logs
logs:
	./logs.sh

.PHONY: configure
configure:
	./configure.sh
