# application_auto_navigation
This package contains an application consisting of different launch files that execute diferent navigation algorithms using [BLUE robot](https://github.com/AUROVA-LAB/robot_blue) and nodes for adapt sensor data. Next we describe one example of how to run a navigation applications. 

### AMCL based navigation:
**Dependences:** All the dependences shown in the first [example](https://github.com/AUROVA-LAB/application_localization) of localization application, [aurova_planning](https://github.com/AUROVA-LAB/aurova_planning), and [aurova_control](https://github.com/AUROVA-LAB/aurova_control).
* Step 1: execute first [example](https://github.com/AUROVA-LAB/application_localization) of localization application.
* Step 2: run blue_auto_online.launch or blue_auto_offline.launch.

![](/documentation/exec_arch.png)

To obtain grid topological-metric trajectories map you should record previously a desired trayectorie and generate link, nodes, and goals files using matlab scripts provided in path_planing package in [aurova_planning](https://github.com/AUROVA-LAB/aurova_planning). You can use a different robot replicating the estructure of [BLUE robot](https://github.com/AUROVA-LAB/robot_blue) package and replacing the references to the BLUE package in these .launch files with those of the new package. The parameters specified in this package are the ones relative to the context to this application. The robot parameters are saved in the robot package.
