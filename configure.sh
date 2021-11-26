#!/bin/bash


mkdir jenkins
mkdir portainer_data


export GITLAB_HOME=~/devops-server/gitlab-server
export DOCKER_REGISTRY_HOME=~/devops-server/docker-registry
export PORTAINER_HOME=~/devops-server/portainer_data
export JEKINS_HOME=~/devops-server/jenkins

sudo setfacl -R -d -m o::rwx $JEKINS_HOME

echo -n dev123456 > ./portainer_data/senha-portainer

source ~/.bashrc

sudo rm -rf certificados &&  docker-compose -f gitlab.yml -f portainer.yml -f jenkins.yml up -d
