# Nvidia Container Toolkit

Sources:

- [https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)
- [https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/cdi-support.html](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/cdi-support.html)

## Prerequisites

- Nvidia drivers installed and working (`nvidia-smi`)
- Docker or Podman installed

## Installation

```sh
sudo apt update
sudo apt install -y --no-install-recommends curl gnupg2

curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

sudo apt update

sudo apt install -y nvidia-container-toolkit
```

## Setup

=== "Docker"
    ```sh
    sudo nvidia-ctk runtime configure --runtime=docker
    sudo systemctl restart docker
    ```

=== "Podman"
    Recent versions of Podman use CDI (Container Device Interface).
    In most cases, no additional runtime configuration is required.

    !!! warning "Generate CDI specifications manually if necessary"
    ```sh
    sudo nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
    ```

## Verify

=== "Docker"
    ```sh
    docker run --rm --gpus all nvidia/cuda:12.3.2-base-ubuntu22.04 nvidia-smi
    ```

=== "Podman"
    ```sh
    podman run --rm --device nvidia.com/gpu=all nvidia/cuda:12.3.2-base-ubuntu22.04 nvidia-smi
    ```