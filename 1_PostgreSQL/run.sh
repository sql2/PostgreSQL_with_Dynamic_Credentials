#!/bin/bash

BIND="0.0.0.0"

docker rm -f pgsql12

docker run --name pgsql12 -d \
	--hostname "pgsql12.example.test" \
	--env POSTGRES_PASSWORD=root \
	--net marvel_dc \
	--ip 172.16.100.1 \
	--publish ${BIND}:5432:5432 \
	postgres:latest


