#!/bin/bash

BIND="0.0.0.0"

docker rm -f vault_server

docker run --name vault_server \
	--hostname "vault.example.test" \
	--env VAULT_TOKEN='vault' \
	--env VAULT_ADDR='http://127.0.0.1:8200' \
	--net marvel_dc \
	--ip 172.16.100.2 \
	--publish ${BIND}:8200:8200 \
	--publish ${BIND}:8201:8201 \
	--detach \
	pg_vault	

