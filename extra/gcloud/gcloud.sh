#!/bin/bash

wget -q https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GOOGLE_SDK_VERSION}-linux-x86_64.tar.gz
tar xzf google-cloud-sdk-${GOOGLE_SDK_VERSION}-linux-x86_64.tar.gz
rm google-cloud-sdk-${GOOGLE_SDK_VERSION}-linux-x86_64.tar.gz

gcloud config set --installation component_manager/disable_update_check true
gcloud components install beta
