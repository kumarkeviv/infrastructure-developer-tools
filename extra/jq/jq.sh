#!/bin/bash

wget -q -O ${BIN_PATH}/jq \
  https://github.com/stedolan/jq/releases/download/jq-${JQ_VERSION}/jq-linux64

chmod +x ${BIN_PATH}/jq
