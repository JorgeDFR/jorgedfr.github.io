# Robot Operating System (ROS) and Docker

## Setup

### Docker images

```sh
# ROS 1
docker pull osrf/ros:noetic-desktop-full-focal

# ROS 2
docker pull osrf/ros:foxy-desktop-focal
docker pull osrf/ros:humble-desktop-full-jammy
docker pull osrf/ros:jazzy-desktop-full-noble

# List local Docker images
docker images
```

### Dockerfiles

- [:material-file: ROS 2 Humble @ Jammy](../../assets/tools/docker/ros/ros2humble.Dockerfile)

**Example**

```dockerfile
FROM osrf/ros:humble-desktop-full-jammy

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV ROS_DISTRO=humble
ENV USER=user
ENV HOME=/home/$USER

# Install additional packages
RUN apt-get update && apt-get install -y \
  sudo \
  curl \
  wget \
  git \
  nano \
  neovim \
  python3-pip \
  python3-colcon-common-extensions \
  python3-rosdep \
  python3-vcstool \
  bash-completion \
  && rm -rf /var/lib/apt/lists/*

# Create user and home directory
RUN useradd -m -d $HOME -s /bin/bash $USER && \
  echo "$USER:$USER" | chpasswd && \
  usermod -aG sudo $USER && \
  echo "$USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# ROS 2
USER $USER
WORKDIR $HOME

RUN mkdir -p $HOME/ros_ws/src

RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> $HOME/.bashrc && \
  echo "source $HOME/ros_ws/install/setup.bash" >> $HOME/.bashrc

# Initialize rosdep
USER root
RUN rosdep init || true
USER $USER
RUN rosdep update

# Set working directory to home and default command
WORKDIR $HOME
CMD ["/bin/bash"]

```

### Build

```sh
docker build -t <name:tag> -f <filename>.Dockerfile .
```

## Run

```sh
# Automatically remove the container and its anonymous volumes when it exits
docker run --rm -it <name:tag> bash
```
