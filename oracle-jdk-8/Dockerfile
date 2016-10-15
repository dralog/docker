FROM centos:latest

MAINTAINER Sven Roeseler <sven@dralog.net>

# Upgrade base image and install wget
RUN yum upgrade -y && yum install -y wget

# Download and install Oracle JDK 1.8.0_102
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.rpm" && yum install -y jdk-8u102-linux-x64.rpm && rm -f jdk-8u102-linux-x64.rpm

# Set required environment variables
ENV JAVA_HOME /usr/java/jdk1.8.0_102
