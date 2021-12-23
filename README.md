# iqr_miivii_robot


## DEPEND
- [BUNKER ROS DRIVER](https://github.com/I-Quotient-Robotics/bunker_ros_driver)
- [SCOUT ROS DRIVER](https://github.com/I-Quotient-Robotics/scout_ros_driver)
- [IMU ROS DRIVER(bunker_imu)](https://github.com/I-Quotient-Robotics/jy901_driver)
- [IMU ROS DRIVER(scout_imu)](https://github.com/QuartzYan/sanchi_amov)
- [LIDAR ROS DRIVER](https://github.com/ouster-lidar/ouster_example)
- [T&H SENSOR DRIVER](https://github.com/QuartzYan/th_sensor_driver)
- [GPS ROS DRIVER](https://github.com/QuartzYan/nmea_ros_driver)

## How to use
- compile & environment setup
  ```bash
  cd ~/catkin_ws
  catkin build
  source ~/catkin_ws/devel/setup.bash
  ```
- setup
  ```bash
  roscd iqr_4m_bringup/script
  ./init_ptpd.bash  #run once after computer reboot
  ./setup_can0.bash #run once after computer reboot
  ```
- start robot and sensor 's ros driver
  ```bash
  roslaunch iqr_4m_bringup bringup.launch #You can modify this file to activate different sensors.
  ```
  then, you can view all of the topic
  ```bash
  rostopic list
  ```
- visualization
  ```bash
  roslaunch iqr_4m_description view_robot.launch
  ```
- mapping 
  ```bash
  roslaunch scout_navigation gmapping_demo.launch viz:=true #For scout robot
  ```
  **OR**
   ```bash
  roslaunch bunker_navigation gmapping_demo.launch viz:=true #For bunker robot
  ```
  
- save map
  ```bash
  roscd scout_navigation/maps #For scout robot
  rosrun map_serve map_save -f [map_name] 
  ```
  **OR**
  ```bash
  roscd bunker_navigation/maps #For bunker robot
  rosrun map_serve map_save -f [map_name] 
  ```
- navigation
  ```bash
  roslaunch scout_navigation amcl_demo.launch viz:=true map_name:=[map_name] #For scout robot
  ```
  **OR**
  ```bash
  roslaunch bunker_navigation amcl_demo.launch viz:=true map_name:=[map_name] #For bunker robot
  ```
