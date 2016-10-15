FROM dralog/oracle-jdk-8:latest

MAINTAINER Sven Roeseler <sven@dralog.net>

# Upgrade base image and install wget
RUN yum upgrade -y

# Download and install Apache Maven 3.3.9
ADD dependencies/apache-maven-3.3.9-bin.tar.gz /usr/local/
ENV MAVEN_HOME /usr/local/apache-maven-3.3.9
RUN ln -s $MAVEN_HOME/bin/mvn /usr/local/bin/mvn
