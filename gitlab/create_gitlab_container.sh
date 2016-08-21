#!/bin/sh

GITLAB_HOSTNAME=svero.northeurope.cloudapp.azure.com
GITLAB_SSH_PORT=10022
GITLAB_IMAGE_NAME=gitlab

docker run --detach \
	--hostname $GITLAB_HOSTNAME \
	--publish 443:443 --publish 80:80 --publish $GITLAB_SSH_PORT:22 \
	--name $GITLAB_IMAGE_NAME \
	--restart always \
	--volume /srv/gitlab/config:/etc/gitlab:Z \
	--volume /srv/gitlab/logs:/var/log/gitlab:Z \
	--volume /srv/gitlab/data:/var/opt/gitlab:Z \
	gitlab/gitlab-ce:latest
