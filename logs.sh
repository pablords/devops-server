#!/bin/bash
read -p "Digite o Container: " container
docker-compose -f http-server.yml -f gitlab.yml -f portainer.yml -f jenkins.yml logs -ft --tail=1000 "$container"
