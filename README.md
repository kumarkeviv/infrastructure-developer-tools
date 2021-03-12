# Infrastructure Developer Tools
Infrastructure developer tools includes set of plugins and services that make it easier than ever to build, test and deploy infrastructure. Infrastructure development tools augment your normal code-build-deploy cycles and integrate directly with your preferred cloud provider (Azure, AWS and GCP) with support for Terraform and other services.

## Goals

Infrastructure developer tools is an Open Source project with the following objectives:

* Accelerate the setup of development environment for infrastructure developer by including most common services and packages.
* Seamlessly update packages and dependency for all supported services & plugins.

## Getting started

### How to build manually

The images can be built manually as follow:

Usage:

    docker build -t infrastructure-developer-tools:{version} {path_repository_directory}

where `{path_repository_directory}` is a directory where `Dockerfile` exist and `${version}` is in the [Semantic Versioning](https://semver.org/) form.

### Automatic deployment over Docker Hub

Every pull resquest on `main` branch will result in a publish of latest image on docker hub

https://hub.docker.com/r/kumarvivek/infrastructure-developer-tools

### How to use infrastructure images

Usage:

    docker run -it -e UID=${UID} -e GID=${GID} infrastructure-developer-tools:{version}

where `${UID}` is the effective user ID and `${GID}` is the effective group ID.

`UserID` and `GroupID` is used for being sure the files inside the container will have the same privileges like files in the system.

To print UID and GID, run the command `id -a` e.g. uid=1000 gid=1001

## Documentation

More details on how to develop, deploy and operate with landing zones can be found in the reference section [here](./documentation/README.md)

## Community

Feel free to open an issue for feature or bug, or to submit a PR.

In case you have any question, you can reach out to kumar.keviv@gmail.com.

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://kumarvivek.pro/cla.

## Code of conduct

For information see the [Code of Conduct FAQ](https://kumarvivek.pro/codeofconduct/faq/) or
contact [kumar.keviv@gmail.com](mailto:kumar.keviv@gmail.com) with any additional questions or comments.