# Containerization

Containerization allows you to package applications and their dependencies into isolated, reproducible environments called **containers**.
Containers are lightweight, portable, and ideal for development, testing, and production deployments.

The most common container engines are:

- **[Docker](docker.md)** – The most widely used container platform.
- **[Podman](podman.md)** – A daemonless, rootless-compatible container engine.

## Comparison

| Feature               | Docker                           | Podman                             |
|-----------------------|----------------------------------|------------------------------------|
| Daemon required       | Yes                              | No                                 |
| Rootless support      | Partial                          | Native                             |
| Docker CLI compatible | Native                           | Yes (`podman-docker`)              |
| Compose support       | Docker Compose plugin            | `podman-compose`                   |
| GPU Support           | Via Nvidia Container Toolkit     | Via Nvidia Container Toolkit (CDI) |

!!! tip "Nvidia Container Toolkit"
    Install [`nvidia-container-toolkit`](nvidia.md) if you have a Nvidia GPU and need GPU acceleration inside containers.