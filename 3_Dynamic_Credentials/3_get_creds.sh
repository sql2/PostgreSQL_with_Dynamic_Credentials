#!/bin/bash

export VAULT_ADDR="http://127.0.0.1:8200"
export VAULT_TOKEN="vault"

echo ""
echo "### CMD ###"
echo ""

vault read postgresql/creds/readonly

echo ""
echo "### API ###"
echo ""

curl -s --header "X-Vault-Token:vault" \
	http://127.0.0.1:8200/v1/postgresql/creds/readonly | jq . 


