#!/bin/sh

# Load parameters
. ./parameters.sh

# Create and start the container with the MySQL database server
docker run \
	--name symfony-db \
	-e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD \
	-e MYSQL_DATABASE=$MYSQL_DATABASE \
	-e MYSQL_USER=$MYSQL_USER \
	-e MYSQL_PASSWORD=$MYSQL_PASSWORD \
	-d \
	mysql:5.6
