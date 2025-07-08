# NVIDIA Drivers

##  Proprietary GPU Drivers PPA

```sh
lspci | grep -i nvidia

cat /proc/driver/nvidia/version

sudo add-apt-repository ppa:graphics-drivers/ppa  # Proprietary GPU Drivers PPA
sudo apt update

sudo ubuntu-drivers list
# OR sudo ubuntu-drivers list --gpgpu

sudo ubuntu-drivers install nvidia:560
# OR sudo ubuntu-drivers install (automatic detection, install hw best match)
```

Sources:

- [https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa](https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa)
- [https://documentation.ubuntu.com/server/how-to/graphics/install-nvidia-drivers/](https://documentation.ubuntu.com/server/how-to/graphics/install-nvidia-drivers/)

## Setup

```sh
nvidia-smi
nvidia-settings   # Enable NVIDIA (Performance Mode) in PRIME Profiles
```
