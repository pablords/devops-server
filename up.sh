#!/bin/bash

docker-compose -f gitlab.yml -f portainer.yml -f jenkins.yml -f registry.yml -f nexus.yml up -d
