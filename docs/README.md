# Overview

Infrastructure developer tools includes set of plugins and services that make it easier than ever to build, test and deploy infrastructure. Infrastructure development tools augment your normal code-build-deploy cycles and integrate directly with your preferred cloud provider (Azure, AWS and GCP) with support for Terraform and other services.

Use this container image together with your [IDE](#vs-code) as part of your developer machine and get a consistent development environment for all your team.

![OVERVIEW][overview-infrastructure-developer-tools]

[overview-infrastructure-developer-tools]: https://github.com/kumarkeviv/infrastructure-developer-tools/raw/sys-06-create-detailed-documentation-usecases-ide/docs/assets/overview.png "Overview infrastructure developer tools"

## Tools and Services Supported

Tools and plugins supported by this version of container image:

| Packages        | Version       |
| --------------- |--------------:|
| GCLOUD CLI      | 330.0.0       |
| AWS CLI         | 1.19.27       |
| PYTHON          | 3.8           |
| KUBECTL         | 1.20.0        |
| KUBECTX         | 0.9.3         |
| HELM            | 3.5.2         |
| VAULT           | 1.6.3         |
| JQ              | 1.6           |

These tools and versions are carefully curated after ensuring there is no conflicts. Refer [ROADMAP](#roadmap) to learn more about planned improvements.

## Getting started

### How to build manually

The images can be built manually as follow:

Usage:

    docker build -t infrastructure-developer-tools:{version} {path_repository_directory}

where `{path_repository_directory}` is a directory where `Dockerfile` exist and `${version}` is in the [Semantic Versioning](https://semver.org/) form.

### How to use infrastructure images

Usage:

    docker run -it -e UID=${UID} -e GID=${GID} infrastructure-developer-tools:{version}

where `${UID}` is the effective user ID and `${GID}` is the effective group ID.

`UserID` and `GroupID` is used for being sure the files inside the container will have the same privileges like files in the system.

To print UID and GID, run the command `id -a` e.g. uid=1000 gid=1001. If want to login as root, don't pass any UID and GID as environment variable.

### Using the docker image from Docker Hub

Download the latest stable image from docker hub

`docker pull kumarvivek/infrastructure-developer-tools`

![PULLINGDOCKERHUB][pulling-docker-hub]

[pulling-docker-hub]: https://github.com/kumarkeviv/infrastructure-developer-tools/raw/sys-06-create-detailed-documentation-usecases-ide/docs/assets/pulling_and_running_infra_dev_tools_container.gif "Pulling image from docker hub"

## IDE Support -  any IDE which support running in container

### VS Code

Attach VS Code IDE with a running infrastructure developer tools contaier and build your infrastructure directly from the container with consistent tool set

![VSCODE][vscode-infra-tool]

[vscode-infra-tool]: https://github.com/kumarkeviv/infrastructure-developer-tools/raw/sys-06-create-detailed-documentation-usecases-ide/docs/assets/vs_code_infrastructure_developer_tools.gif "Using infrastructure developer tools container with VSCode"

## Roadmap

Planned future improvements in the co:

- [ ] Multi container toolset support - so each tool can run in its own container with mounted volume and command from base container
- [ ] Additional IDE support + documentation

![ROADMAP][roadmap-infrastructure-developer-tools]

[roadmap-infrastructure-developer-tools]: https://github.com/kumarkeviv/infrastructure-developer-tools/raw/sys-06-create-detailed-documentation-usecases-ide/docs/assets/multi_container_support.png "Distributed container for developer tools"

Having an idea for a new feature in this project?
Create a [Issue](https://github.com/kumarkeviv/infrastructure-developer-tools/issues).
