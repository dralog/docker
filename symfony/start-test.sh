#!/bin/sh

# Create and start the application container
docker run \
	--name symfony-test \
	--link symfony-db:mysql \
	--rm \
	-it \
	svero/symfony /bin/bash
