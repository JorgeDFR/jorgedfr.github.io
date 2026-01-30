FROM osrf/ros:noetic-desktop

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV ROS_DISTRO=noetic
ENV USER=user
ENV HOME=/home/$USER

# Install additional packages
RUN apt-get update && apt-get install -y \
  sudo \
  curl \
  wget \
  git \
  nano \
  python3-pip \
  python3-catkin-tools \
  python3-rosdep \
  python3-vcstool \
  bash-completion \
  software-properties-common \
  && rm -rf /var/lib/apt/lists/*

# Create user and home directory
RUN useradd -m -d $HOME -s /bin/bash $USER && \
  echo "$USER:$USER" | chpasswd && \
  usermod -aG sudo $USER && \
  echo "$USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# ROS
USER $USER
WORKDIR $HOME

RUN mkdir -p $HOME/ros_ws/src

RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> $HOME/.bashrc && \
    echo "source $HOME/ros_ws/devel/setup.bash" >> $HOME/.bashrc

RUN echo "export DISABLE_ROS1_EOL_WARNINGS=true" >> $HOME/.bashrc

# Initialize rosdep
USER root
RUN rosdep init || true
USER $USER
RUN rosdep update

# Set working directory to home and default command
WORKDIR $HOME
CMD ["/bin/bash"]
