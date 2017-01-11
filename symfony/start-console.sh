#!/bin/sh

docker run \
	--name symfony-db-console \
	--link symfony-db:mysql \
	--rm \
	-it \
	mysql:5.6 /bin/bash
