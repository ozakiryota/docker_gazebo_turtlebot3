# docker_gazebo_turtlebot3

## Demo
![image](https://user-images.githubusercontent.com/37431972/178087611-eb5fd292-c4c1-42ce-b359-a636f227bfed.png)

## Requirements
* Docker
* Nvidia Driver
* Nvidia Container Runtime

## Installation
```bash
git clone https://github.com/ozakiryota/docker_gazebo_turtlebot3.git
cd docker_gazebo_turtlebot3
./build
```

## Usage
### Teleoperation
```bash
cd docker_gazebo_turtlebot3
./run_burger_teleop.sh
```
### Random move
```bash
cd docker_gazebo_turtlebot3
./run_burger_auto.sh
```
