FROM docker:20.10.5

ARG USER="kumarvivek"
ARG ID="1000"
ENV ANSIBLE_VERSION="2.9.4"
ENV ANSIBLE_LINT="5.0.2"
ENV PASSLIB_VERSION="1.7.4"
ENV BCRYPT_VERSION="3.2.0"
ENV TERRAFORM_VERSION="0.14.7"
ENV GOOGLE_SDK_VERSION="330.0.0"
ENV AWS_CLI_VERSION="1.19.27"
ENV AZURE_CLI_VERSION="330.0.0"
ENV KUBECTL_VERSION="1.20.0"
ENV KUBECTX_VERSION="0.9.3"
ENV HELM_VERSION="3.5.2"
ENV VAULT_VERSION="1.6.3"
ENV JQ_VERSION="1.6"
ENV BIN_PATH="/usr/local/bin"
ENV PATH="/google-cloud-sdk/bin:${PATH}"
ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1

COPY extra /extra

RUN apk update && apk upgrade && \
  apk add --no-cache python3 python3-dev bash git openssh-client openssl ca-certificates tar wget unzip py3-pip curl && \
  pip3 install --upgrade pip && \
  pip3 install awscli=={AWS_CLI_VERSION} && \
  /extra/aws-cli/aws-cli.sh && \
  /extra/azure-cli/azure-cli.sh && \
  /extra/ansible/ansible.sh && \
  /extra/terraform/terraform.sh && \
  /extra/vault/vault.sh && \
  /extra/gcloud/gcloud.sh && \
  /extra/kube/kubectl.sh && \
  /extra/kube/kubectx.sh && \
  /extra/helm/helm.sh && \
  /extra/jq/jq.sh && \
  rm -rf /extra

RUN addgroup -g ${ID} ${USER} \
 && adduser -D -u ${ID} -G ${USER} -s /bin/bash ${USER}

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD /bin/bash
