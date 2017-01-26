#!/bin/sh

docker run \
	--name ${REDMINE_DB_CONTAINER_NAME=redmine_db} \
	--detach \
	--env POSTGRES_PASSWORD=${REDMINE_DB_PASSWORD=secret} \
	--env POSTGRES_USER=${REDMINE_DB_USER=redmine} \
	postgres

docker run \
	--detach \
	--name ${REDMINE_CONTAINER_NAME=redmine_app} \
	--hostname ${REDMINE_HOSTNAME:=`hostname -f`} \
	--link ${REDMINE_DB_CONTAINER_NAME}:postgres \
	--publish ${REDMINE_HTTP_PORT=8080}:3000 \
	redmine
