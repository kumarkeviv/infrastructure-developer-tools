#!/bin/bash

wget -q -O ${BIN_PATH}/kubectl \
  https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl

chmod +x ${BIN_PATH}/kubectl
