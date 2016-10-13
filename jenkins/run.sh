#!/bin/sh

docker run \
	--detach \
	--hostname ${JENKINS_HOSTNAME:=localhost} \
	--restart always \
	--name ${JENKINS_CONTAINER_NAME:=jenkins} \
	--publish ${JENKINS_HTTP_PORT:=8080}:8080 \
	--publish ${JENKINS_SLAVE_PORT:=50000}:50000 \
	--volume ${JENKINS_HOME_DIR:=/srv/jenkins}:/var/jenkins_home:Z \
	svero/jenkins:latest
