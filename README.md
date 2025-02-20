# cicd-example-1
Test repo for a simple CI/CD pipeline with GitHub Actions

![image](docs/pipeline-1.png)

## Build job
The build job sets up the Go environment, downloads dependencies, builds the project, and runs tests.

## Docker job
The docker job logs into Docker Hub, sets up QEMU and Docker Buildx, and builds and pushes the artefacts to Docker Hub public registry.

This job generates images for multiple architectures: amd64 and arm64 under ```cicd-example-1``` tag.

![images](docs/images.png)

![os-image](docs/os-image.png)