#!/bin/bash



mkdir portainer

echo -n dev123456 > ./portainer/senha-portainer

docker-compose -f gitlab.yml -f portainer.yml -f jenkins.yml -f registry.yml -f nexus.yml up -d
