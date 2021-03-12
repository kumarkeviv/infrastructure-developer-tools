#!/bin/bash

wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d ${BIN_PATH}
rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip
chmod +x ${BIN_PATH}/terraform
