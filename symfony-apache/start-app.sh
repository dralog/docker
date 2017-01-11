#!/bin/sh

# Create and start the application container
docker run \
	--name symfony-app \
	--link symfony-db:mysql \
	-d \
	svero/symfony-apache
