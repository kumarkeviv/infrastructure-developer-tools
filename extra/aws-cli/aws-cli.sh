#!/bin/bash

curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.0.30.zip -o awscliv2.zip
unzip awscliv2.zip
./aws/install -i /usr/local/bin/aws-cli -b /usr/local/bin
