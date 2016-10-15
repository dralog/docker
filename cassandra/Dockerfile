FROM dralog/oracle-jdk-8:latest

MAINTAINER Sven Roeseler <sven@dralog.net>

COPY dependencies/datastax.repo /etc/yum.repos.d/

RUN yum upgrade -y && yum install dsc20
