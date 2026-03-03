FROM ros:noetic-ros-base

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip \
    python3-rosdep \
    python3-catkin-tools \
    build-essential \
    git \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/catkin_ws/src
WORKDIR /root/catkin_ws/src

# Foxglove bridge
RUN git clone https://github.com/foxglove/foxglove_bridge.git

# ---- AJOUT : copier tes messages (à adapter) ----
# Exemple si tu as mower_msgs et xbot_msgs dans ton repo
# (les chemins doivent exister dans le context docker build)
COPY ../ros/src/mower_msgs ./mower_msgs
# COPY ../ros/src/xbot_msgs ./xbot_msgs

WORKDIR /root/catkin_ws

RUN rosdep update && \
    rosdep install --from-paths src --ignore-src -r -y && \
    source /opt/ros/noetic/setup.bash && \
    catkin_make

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8765
ENTRYPOINT ["/entrypoint.sh"]