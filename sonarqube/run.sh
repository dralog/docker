#!/bin/sh

# Database (volume: /var/lib/postgresql/data)
docker run \
	--detach \
	--name ${SONARQUBE_DB_NAME:=sonarqube_db} \
	--env "POSTGRES_USER=sonar" \
	--env "POSTGRES_PASSWORD=sonar" \
	postgres:latest

# SonarQube (volumes: /opt/sonarqube/data, /opt/sonarqube/extensions)
docker run \
	--detach \
	--name ${SONARQUBE_NAME:=sonarqube} \
	--hostname ${SONARQUBE_HOSTNAME:=`hostname -f`} \
	--publish ${SONARQUBE_PORT_9000:=9000}:9000 \
	--publish ${SONARQUBE_POST_9092:=9092}:9092 \
	--link ${SONARQUBE_DB_NAME} \
	--env "SONARQUBE_JDBC_URL=jdbc:postgresql://${SONARQUBE_DB_NAME}/sonar" \
	sonarqube:lts
