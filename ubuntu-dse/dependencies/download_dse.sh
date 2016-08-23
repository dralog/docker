#!/bin/bash

if [ "$1" == "" -o "$2" == "" ]; then
	echo "Usage: $0 <dsa_email_address> <password>"
	exit 1
fi

echo curl --user $1:$2 -L http://downloads.datastax.com/enterprise/dse.tar.gz
