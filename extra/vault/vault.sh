#!/bin/bash

wget -q https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip
unzip vault_${VAULT_VERSION}_linux_amd64.zip -d ${BIN_PATH}
rm vault_${VAULT_VERSION}_linux_amd64.zip
chmod +x ${BIN_PATH}/vault
