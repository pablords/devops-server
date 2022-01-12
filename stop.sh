#!/bin/bash
read -p "Digite o Container: " container
docker-compose -f gitlab.yml -f portainer.yml -f jenkins.yml -f registry.yml -f nexus.yml stop "$container"
