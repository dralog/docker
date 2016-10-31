#!/bin/sh

docker run --detach \
	--hostname ${GITLAB_HOSTNAME:=`hostname -f`} \
	--publish ${GITLAB_HTTP_PORT:=80}:80 \
	--publish ${GITLAB_HTTPS_PORT:=443}:443 \
	--publish ${GITLAB_SSH_PORT:=8022}:22 \
	--name ${GITLAB_IMAGE_NAME:=gitlab} \
	--restart always \
	--volume ${GITLAB_CONFIG_DIR:=/srv/gitlab/config}:/etc/gitlab:Z \
	--volume ${GITLAB_LOG_DIR:=/srv/gitlab/logs}:/var/log/gitlab:Z \
	--volume ${GITLAB_DATA_DIR:=/srv/gitlab/data}:/var/opt/gitlab:Z \
	gitlab/gitlab-ce:latest
