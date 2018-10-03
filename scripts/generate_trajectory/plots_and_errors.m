RUTA = '../rosbags/2018-06-21 experimentos/topics_nav/';

gps_x             = csvread('../rosbags/2018-06-21 experimentos/topics_nav/gps_x.csv');
gps_y             = csvread('../rosbags/2018-06-21 experimentos/topics_nav/gps_y.csv');
fusion_gps_x      = csvread('../rosbags/2018-06-21 experimentos/topics_nav/fusion_gps_x.csv');
fusion_gps_y      = csvread('../rosbags/2018-06-21 experimentos/topics_nav/fusion_gps_y.csv');
fusion_odom_imu_x = csvread('../rosbags/2018-06-21 experimentos/topics_nav/fusion_odom_imu_x.csv');
fusion_odom_imu_y = csvread('../rosbags/2018-06-21 experimentos/topics_nav/fusion_odom_imu_y.csv');

figure
hold on
grid
plot(fusion_gps_x, fusion_gps_y, '. r', 'linewidth', 2);
plot(gps_x, gps_y, '. b', 'linewidth', 2);
ylabel('y (m)');
xlabel('x (m)');
legend('EKF fusion RTK + IMU + odom', 'GPS - RTK');
axis([-50 80 -90 10]);

figure
hold on
grid
plot(gps_x, gps_y, '. b', 'linewidth', 3);
ylabel('y (m)');
xlabel('x (m)');
legend('Trayectoria GPS - RTK');
axis([-40 80 -80 10]);

figure
hold on
grid
plot(fusion_odom_imu_x, fusion_odom_imu_y, '. r', 'linewidth', 2);
plot(gps_x, gps_y, '. b', 'linewidth', 2);
ylabel('y (m)');
xlabel('x (m)');
legend('EKF fusion IMU + odom', 'GPS - RTK');
axis([-50 80 -90 10]);