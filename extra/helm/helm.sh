#!/bin/bash

wget -q https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz
tar -zxf helm-v${HELM_VERSION}-linux-amd64.tar.gz
mv ./linux-amd64/helm ${BIN_PATH}/helm
rm -rf linux-amd64/ helm-v${HELM_VERSION}-linux-amd64.tar.gz
chmod +x ${BIN_PATH}/helm
