export GITLAB_HOME=/srv/gitlab

docker-compose up -d

docker logs -ft --tail=1000 gitlab