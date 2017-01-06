#!/bin/sh

docker build -t svero/apache-php5-pdo-mysql:latest -t svero/apache-php5-pdo-mysql:$(date +%Y%m%d) .
