![IDT][logo]

[logo]: https://github.com/kumarkeviv/infrastructure-developer-tools/raw/sys-06-create-detailed-documentation-usecases-ide/docs/assets/logo.png "Infrastructure Developer Tools"

[![Discord](https://img.shields.io/discord/820616124721791007)](https://discord.gg/nVEn3shBjc)
[![License](https://img.shields.io/github/license/kumarkeviv/infrastructure-developer-tools)](https://github.com/kumarkeviv/infrastructure-developer-tools/blob/main/LICENSE)
[![DockerHub](https://img.shields.io/docker/pulls/kumarvivek/infrastructure-developer-tools)](https://hub.docker.com/r/kumarvivek/infrastructure-developer-tools)

# Infrastructure Developer Tools
Infrastructure developer tools includes set of plugins and services that make it easier than ever to build, test and deploy infrastructure. Infrastructure development tools augment your normal code-build-deploy cycles and integrate directly with your preferred cloud provider (Azure, AWS and GCP) with support for Terraform and other services.

![OVERVIEW][overview-infrastructure-developer-tools]

[overview-infrastructure-developer-tools]: ./docs/assets/overview.png "Overview infrastructure developer tools"

## Goals

Infrastructure developer tools is an Open Source project with the following objectives:

* Accelerate the setup of development environment for infrastructure developer by including most common services and packages.
* Seamlessly update packages and dependency for all supported services & plugins.

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

These tools and versions are carefully curated after ensuring there is no conflicts.

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

## Documentation

[Overview](./docs/README.md#overview)
[Tools and Services Supported](./docs/README.md#tools-and-services-supported)
[Getting Started](./docs/README.md#getting-started)
: [How to build manually](./docs/README.md#how-to-build-manually)
: [How to use infrastructure images](./docs/README.md#how-to-use-infrastructure-images)
: [Using the docker image from Docker Hub](./docs/README.md#using-the-docker-image-from-docker-hub)
[IDE Support](./docs/README.md#ide-support----any-ide-which-support-running-in-container)
: [VS Code](./docs/README.md#vs-code)
[Roadmap](./docs/README.md#roadmap)

## Community

Feel free to open an issue for feature or bug, or to submit a PR.

In case you have any question, you can reach out to kumar.keviv@gmail.com.
