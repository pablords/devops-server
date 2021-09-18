#!/bin/bash

docker-compose -f http-server.yml -f gitlab.yml -f portainer.yml -f jenkins.yml up -d
