#!/bin/bash
# encoding: UTF-8
set -e

echo '[Entrypoint] Start vault dev server.'
vault server -dev -dev-root-token-id="vault" -dev-listen-address="0.0.0.0:8200"
