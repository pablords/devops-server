#!/bin/bash


echo -n dev123456 >./portainer_data/senha-portainer
export GITLAB_HOME=~/devops-server/gitlab-server
source ~/.bashrc
sudo rm -rf certificados &&  docker-compose -f http-server.yml -f gitlab.yml -f portainer.yml up -d