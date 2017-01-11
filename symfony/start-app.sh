#!/bin/sh

# Create and start the application container
docker run \
	--name symfony-app \
	--link symfony-db:mysql \
	-p 8000:8000 \
	-d \
	svero/symfony
