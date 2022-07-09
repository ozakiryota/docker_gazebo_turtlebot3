#!/bin/bash

xhost +

image="turtlebot3"
tag="latest"

docker run \
	-it \
	--rm \
	-e "DISPLAY" \
	-v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	--gpus all \
	$image:$tag \
	bash -c " \
		source /opt/ros/noetic/setup.bash ; \
		export TURTLEBOT3_MODEL=burger ; \
		roslaunch turtlebot3_gazebo turtlebot3_world.launch & \
		sleep 3s ; \
		roslaunch turtlebot3_gazebo turtlebot3_gazebo_rviz.launch & \
		sleep 3s ; \
		roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch"