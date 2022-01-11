#!/bin/bash
#set -e
#
## setup ros environment
#source "/opt/ros/$ROS_DISTRO/setup.bash"
#exec "$@"
#!/bin/bash
set -e

ros_env_setup="/opt/ros/$ROS_DISTRO/setup.bash"
echo "sourcing   $ros_env_setup"
source "$ros_env_setup"

echo "ROS_ROOT   $ROS_ROOT"
echo "ROS_DISTRO $ROS_DISTRO"

exec "$@"