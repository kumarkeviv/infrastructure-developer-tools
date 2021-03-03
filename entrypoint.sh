#!/bin/bash

USER="ci-user"

if [[ "$(id -u)" != "1000" && "$(id -g)" != "1000" ]]; then
  if [[ ! -z ${UID} && ! -z ${GID} ]]; then
    deluser ${USER}
    if [ ! $(getent group ${GID}) ]; then
      addgroup -g ${GID} ${USER}
    fi
    GROUP=$(getent group ${GID} |awk -F: '{ print $1 }')
    adduser -D -u ${UID} -G ${GROUP} -s /bin/bash ${USER}
    chown ${USER}:${GROUP} /home/${USER}
    su ${USER} -c "$*"
  else
    $*
  fi
else
  $*
fi
