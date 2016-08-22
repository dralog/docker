#!/bin/bash

docker run \
	--detach \
	--restart always \
	--hostname ${NEXUS_HOSTNAME:=localhost} \
	--name ${NEXUS_IMAGE_NAME:=nexus} \
	--publish ${NEXUS_HTTP_PORT:=8081}:8081 \
	sonatype/nexus:oss
