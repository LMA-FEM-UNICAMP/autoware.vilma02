mkdir -p src

vcs import src < autoware.repos

source /opt/ros/humble/setup.bash
sudo apt update
rosdep update
rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO
