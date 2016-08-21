FROM svero/oracle-jdk-1.8:latest

MAINTAINER Sven Roeseler <me@svero.de>

# Upgrade base image and install wget
RUN yum upgrade -y

# Download and install Apache Maven 3.3.9
ADD dependencies/apache-maven-3.3.9-bin.tar.gz /usr/local/
ENV M2_HOME /usr/local/apache-maven-3.3.9
RUN ln -s $M2_HOME/bin/mvn /usr/local/bin/mvn
