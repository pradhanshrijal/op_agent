#! /bin/bash -e
ROLE_NAME=$1
MAP_NAME=$2
EXPLORE_MODE=$3
ROUTE_TOPIC=$4

#OP_ENVS="${OP_ENVS:=${OP_BRIDGE_ROOT}/pha_scripts/export_exploration_envs.sh}"
#CWR_ENVS="${CWR_ENVS:=${OP_BRIDGE_ROOT}/pha_scripts/export_cwr_envs.sh}"

#source ${OP_ENVS}
#source ${CWR_ENVS}

echo "Starting CWR Chassis .. "
echo "-------------------------------"
echo "Agent Name: " ${ROLE_NAME}
echo "Exploration Mode: " ${EXPLORE_MODE}
# echo $route_topic
echo "Map Path: " ${OP_AGENT_ROOT}/autoware-contents/maps/${MAP_NAME}
echo "CARLA Path: " ${CARLA_ROOT}
echo "-------------------------------"
echo ""

# ros2 launch /home/hatem/carla/op_agent/autoware_carla_launch/carla_autoware_sensors_interface.xml
ros2 launch ${OP_AGENT_ROOT}/autoware_carla_launch/modules/cwr_chassis.launch.xml
# $SHELL

