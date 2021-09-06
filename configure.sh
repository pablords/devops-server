#!/bin/bash

export GITLAB_HOME=~/gitlab-server/data

source ~/.bashrc

docker-compose up -d

docker logs -ft --tail=1000 gitlab 