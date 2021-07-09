## Navigation application using Gazebo model of the BLUE robot

### Requirements to use this package:

- System requirements: Ubuntu 16.04 and ROS Kinetic.
- Libraries: [lib_planning](https://github.com/AUROVA-LAB/lib_planning), Eigen, and PCL.
- BLUE model for Gazebo: Follow instructions in [robot_blue_gazebo](https://github.com/AUROVA-LAB/robot_blue_gazebo).
- ROS packages: [aurova_preprocessed](https://github.com/AUROVA-LAB/aurova_preprocessed), [aurova_localization](https://github.com/AUROVA-LAB/aurova_localization), and [aurova_planning](https://github.com/AUROVA-LAB/aurova_planning). 
- ROS application packages: [application_navigation](https://github.com/AUROVA-LAB/application_navigation), and [application_localization](https://github.com/AUROVA-LAB/application_localization).

### Usage instructions:

- Step 0: You should change the parameter ~global_planning/url_path in the "application_navigation/params/blue_gazebo.yaml" file to indicate your local PC path. 

- Step 1: To run the local and global path planning, and the utm->map /tf, run the following command:
```shell
roslaunch application_navigation blue_gazebo.launch
```

- Step 2: To run the complete localization system, run the following command:
```shell
roslaunch application_localization blue_gazebo.launch
```

- Step 3: After that, you should send a goal using rviz button "2D Nav Goals" and the mouse to start the autonomous navigation.


## Navigation application using .bag dataset

### Requirements to use this package:

- System requirements: Ubuntu 16.04 and ROS Kinetic.
- Libraries: [lib_planning](https://github.com/AUROVA-LAB/lib_planning), Eigen, and PCL.
- BLUE robot package: [robot_blue](https://github.com/AUROVA-LAB/robot_blue).
- ROS packages: [aurova_preprocessed](https://github.com/AUROVA-LAB/aurova_preprocessed), [aurova_localization](https://github.com/AUROVA-LAB/aurova_localization), and [aurova_planning](https://github.com/AUROVA-LAB/aurova_planning). 
- ROS application packages: [application_navigation](https://github.com/AUROVA-LAB/application_navigation), and [application_localization](https://github.com/AUROVA-LAB/application_localization).
- Dataset example as rosbag file: [dataset link](https://drive.google.com/file/d/1JzL42ya_tXvQ8agNIiKDFAPPRJ8M2ZsH/view?usp=sharing).

### Usage instructions:

- Step 0: You should change the parameter ~global_planning/url_path in the "application_navigation/params/blue_online.yaml" file to indicate your local PC path.

- Step 0: You should change the tag value "bag_file_8" in "application_localization/launch/blue_fusion_offline.launch" file, to indicate your local PC path to .bag file.

- Step 1: To run the local and global path planning, and the utm->map /tf, run the following command:
```shell
roslaunch application_navigation blue_online.launch
```

- Step 2: To run the complete localization system, run the following command:
```shell
roslaunch application_localization blue_fusion_offline.launch
```

- Step 3: The vehicle is not localized since the velocity doesn't achieve a threshold yet. You should wait. When the velocity reaches the threshold, the vehicle is localized, and you can see in rviz the lidar point cloud in grey.

- Step 4: After that, you should send a goal using the rviz button "2D Nav Goals" and the mouse to start the autonomous navigation.

## Navigation application using the real BLUE robot

### Requirements to use this package:

- System requirements: Ubuntu 16.04 and ROS Kinetic.
- Libraries: [lib_planning](https://github.com/AUROVA-LAB/lib_planning), Eigen, and PCL.
- BLUE robot package: [robot_blue](https://github.com/AUROVA-LAB/robot_blue).
- ROS packages: [aurova_preprocessed](https://github.com/AUROVA-LAB/aurova_preprocessed), [aurova_localization](https://github.com/AUROVA-LAB/aurova_localization), and [aurova_planning](https://github.com/AUROVA-LAB/aurova_planning). 
- ROS application packages: [application_navigation](https://github.com/AUROVA-LAB/application_navigation), and [application_localization](https://github.com/AUROVA-LAB/application_localization).

### Usage instructions:

- Step 0: You should change the parameter ~global_planning/url_path in "application_navigation/params/blue_online.yaml" file, to indicate your local PC path. 

- Step 1: To run the local and global path planning, and the utm->map /tf, run following command:
```shell
roslaunch application_navigation blue_online.launch
```

- Step 2: To run the complete localization system, run the following command:
```shell
roslaunch application_localization blue_fusion_online.launch
```

- Step 3: The vehicle is not localized since the velocity doesn't achieve a configurable threshold yet. Then, you should drive the vehicle in front direction until its max velocity to localize it. When the velocity reaches the threshold, the vehicle is localized, and you can see in rviz the lidar point cloud in grey.

- Step 4: After that, you should send a goal using the rviz button "2D Nav Goals" and the mouse to start the autonomous navigation.

## Application scheme.

![](/documentation/approach.png)
