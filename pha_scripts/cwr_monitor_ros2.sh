#! /bin/bash -e

OP_ENVS=$1
CWR_ENVS=$2
OP_ENVS="${OP_ENVS:=${OP_BRIDGE_ROOT}/pha_scripts/export_exploration_envs.sh}"
CWR_ENVS="${CWR_ENVS:=${OP_BRIDGE_ROOT}/pha_scripts/export_carlaware_envs.sh}"

source ${OP_ENVS}
source ${CWR_ENVS}

echo "Starting CWR Monitor .. "
echo "-------------------------------"

# ros2 launch /home/hatem/carla/op_agent/autoware_carla_launch/carla_autoware_sensors_interface.xml
ros2 launch ${OP_AGENT_ROOT}/autoware_carla_launch/modules/cwr_monitor.launch.xml
# $SHELL

