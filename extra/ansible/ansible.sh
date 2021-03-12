#!/bin/bash

ANSIBLE_CONF_DIR="/etc/ansible"

apk add --update --virtual ansible-build-deps libc-dev libffi-dev openssl-dev build-base

pip3 install ansible==${ANSIBLE_VERSION} passlib==${PASSLIB_VERSION} bcrypt==${BCRYPT_VERSION} ansible-lint==${ANSIBLE_LINT}
apk del ansible-build-deps
rm -rf /var/cache/apk/*

mkdir -p ${ANSIBLE_CONF_DIR}
echo -e "[local]\nlocalhost ansible_connection=local" > ${ANSIBLE_CONF_DIR}/hosts
