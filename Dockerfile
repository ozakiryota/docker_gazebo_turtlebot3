########## Pull ##########
FROM nvidia/opengl:base-ubuntu20.04
########## Non-interactive ##########
ENV DEBIAN_FRONTEND=noninteractive
########## Common tool ##########
RUN apt-get update && \
	apt-get install -y \
		vim \
		wget \
		unzip \
		git \
        python-tk
########## ROS ##########
RUN apt-get update && \
	apt-get install -y \
		lsb-release \
		curl \
		gnupg2 && \
	sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
	curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add - && \
	apt-get update && \
	apt-get install -y ros-noetic-ros-base && \
	echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
########## Gazebo & Rviz ##########
RUN apt-get update && \
	apt-get install -y \
		ros-noetic-gazebo-ros-pkgs \
		ros-noetic-rviz
########## Turtlebot3 ##########
RUN apt-get update && \
	apt-get install -y \
		ros-noetic-turtlebot3-gazebo \
		ros-noetic-turtlebot3-bringup \
		ros-noetic-turtlebot3-teleop
########## Initial position ##########
WORKDIR /root