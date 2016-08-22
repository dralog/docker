#!/bin/sh

docker run \
	--detach \
	--hostname ${JENKINS_HOSTNAME:=localhost} \
	--restart always \
	--name ${JENKINS_CONTAINER_NAME:=jenkins} \
	--publish ${JENKINS_HTTP_PORT:=8080}:8080 \
	--publish ${JENKINS_SLAVE_PORT:=50000}:50000 \
	svero/jenkins:latest
