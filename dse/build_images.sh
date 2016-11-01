#!/bin/sh

DSE_VERSION=5.0.3
AGENT_VERSION=6.0.3
OPSCENTER_VERSION=6.0.3

DSE_TARGET_FILE=dependencies/dse-bin.tar.gz
AGENT_TARGET_FILE=dependencies/datastax-agent_all.deb
OPSCENTER_TARGET_FILE=dependencies/opscenter.tar.gz

read -p 'Please enter your DataStax user name....................: ' user
read -s -p 'Please enter your DataStax password.....................: ' password
echo

wget --user=$user --password=$password -O $DSE_TARGET_FILE http://downloads.datastax.com/enterprise/dse-${DSE_VERSION}-bin.tar.gz
wget --user=$user --password=$password -O $AGENT_TARGET_FILE http://debian.datastax.com/enterprise/pool/datastax-agent_${AGENT_VERSION}_all.deb
wget --user=$user --password=$password -O $OPSCENTER_TARGET_FILE http://downloads.datastax.com/enterprise/opscenter-${OPSCENTER_VERSION}.tar.gz

docker build -t dse .
docker build -t opscenter -f OpscDockerfile .
