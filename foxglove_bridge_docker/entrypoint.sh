#!/bin/bash
source /opt/ros/noetic/setup.bash
source /root/catkin_ws/devel/setup.bash
exec rosrun foxglove_bridge foxglove_bridge
