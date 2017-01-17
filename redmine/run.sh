#!/bin/sh

docker run \
	--name redmine_db \
	--detach \
	--env POSTGRES_PASSWORD=secret \
	--env POSTGRES_USER=redmine \
	postgres

docker run \
	--name redmine_app \
	--detach \
	--link redmine_db:postgres \
	--publish 8080:3000 \
	redmine
