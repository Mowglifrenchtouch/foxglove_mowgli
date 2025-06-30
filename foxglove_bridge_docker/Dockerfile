FROM ros:noetic-ros-base

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    python3-pip \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/catkin_ws/src
WORKDIR /root/catkin_ws/src

RUN git clone https://github.com/foxglove/foxglove_bridge.git

WORKDIR /root/catkin_ws
RUN apt update && rosdep update && \
    rosdep install --from-paths src --ignore-src -r -y && \
    . /opt/ros/noetic/setup.sh && \
    catkin_make

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8765

ENTRYPOINT ["/entrypoint.sh"]
