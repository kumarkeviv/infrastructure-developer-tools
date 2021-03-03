#!/bin/bash

wget -q https://github.com/ahmetb/kubectx/archive/v${KUBECTX_VERSION}.zip
unzip v${KUBECTX_VERSION}.zip
mv kubectx-${KUBECTX_VERSION}/kubectx ${BIN_PATH}/kubectx
mv kubectx-${KUBECTX_VERSION}/kubens ${BIN_PATH}/kubens
rm -rf kubectx-${KUBECTX_VERSION} v${KUBECTX_VERSION}.zip
chmod +x ${BIN_PATH}/kubens ${BIN_PATH}/kubectx
