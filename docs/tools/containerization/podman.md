# Podman

Sources:

- [https://podman.io/docs/installation](https://podman.io/docs/installation)

## Installation

```sh
sudo apt update
sudo apt -y install podman-docker podman-compose
```

!!! warning "Difference between `podman` and `podman-docker`"
    - **`podman`** is the actual container engine.
    It runs containers daemonless and supports rootless mode by default.

    - **`podman-docker`** does NOT install Docker.
    It installs a `/usr/bin/docker` wrapper that forwards Docker CLI commands to Podman.

    This means:

    - When you run `docker run ...`, you are actually using Podman.
    - It works system-wide (not just as a shell alias).
    - It allows existing scripts and tools that expect the `docker` command to work without modification.

    If you do not need Docker CLI compatibility, you can install only `podman`.

## Setup

```sh
systemctl --user enable podman.socket
```

## Hello World

```sh
docker --version
docker info
docker run hello-world
```