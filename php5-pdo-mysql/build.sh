#!/bin/sh

docker build -t svero/php5-pdo-mysql:latest -t svero/php5-pdo-mysql:$(date +%Y%m%d) .
