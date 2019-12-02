#!/bin/bash

export VAULT_ADDR="http://127.0.0.1:8200"
export VAULT_TOKEN="vault"

vault secrets disable postgresql
vault secrets enable postgresql 

vault write postgresql/config/connection \
	connection_url="postgresql://root:root@172.16.100.1:5432/postgres?sslmode=disable"

# vault write postgresql/config/lease lease=1h lease_max=24h

vault write postgresql/roles/readonly \
    sql="CREATE ROLE \"{{name}}\" WITH LOGIN PASSWORD '{{password}}' VALID UNTIL '{{expiration}}';
    GRANT SELECT ON ALL TABLES IN SCHEMA public TO \"{{name}}\";"

# vault read postgresql/creds/readonly
