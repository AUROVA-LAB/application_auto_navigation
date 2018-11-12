
SAVE_FILE = 1;

% get entire trajectory
trajectory_x  = csvread('trajectory_x.csv');
trajectory_y  = csvread('trajectory_y.csv');
output_filename_nodes = 'znodes.graph';
output_filename_links    = 'zlinks.graph';
output_filename_goals  = 'zgoals.graph';

%--------------------------------------------------------------------------------------------------------------------
% define the nodes of grah-trajectory here
%--------------------------------------------------------------------------------------------------------------------
num_nodes = 5;
if SAVE_FILE
    file_data = num_nodes;
    dlmwrite(output_filename_nodes, file_data', 'delimiter',',','-append');
end

id_node = 1;
pose_x_node = 68.94; % index 1
pose_y_node = 80.86;
num_nodes_neighbours = 2;
id_nodes_neighbours = [2 5];
if SAVE_FILE
    file_data = [id_node pose_x_node pose_y_node num_nodes_neighbours id_nodes_neighbours];
    dlmwrite(output_filename_nodes, file_data', 'delimiter',',','-append');
end

id_node = 2;
pose_x_node = -23.66; % index 395
pose_y_node = 74.46;
num_nodes_neighbours = 2;
id_nodes_neighbours = [1 3];
if SAVE_FILE
    file_data = [id_node pose_x_node pose_y_node num_nodes_neighbours id_nodes_neighbours];
    dlmwrite(output_filename_nodes, file_data', 'delimiter',',','-append');
end

id_node = 3; 
pose_x_node = -13.78; % index 710
pose_y_node = 2.98;
num_nodes_neighbours = 2;
id_nodes_neighbours = [2 4];
if SAVE_FILE
    file_data = [id_node pose_x_node pose_y_node num_nodes_neighbours id_nodes_neighbours];
    dlmwrite(output_filename_nodes, file_data', 'delimiter',',','-append');
end

id_node = 4;
pose_x_node = 93.22; % index 1160
pose_y_node = 9.18;
num_nodes_neighbours = 2;
id_nodes_neighbours = [3 5];
if SAVE_FILE
    file_data = [id_node pose_x_node pose_y_node num_nodes_neighbours id_nodes_neighbours];
    dlmwrite(output_filename_nodes, file_data', 'delimiter',',','-append');
end

id_node = 5;
pose_x_node = 90.04; % index 1451
pose_y_node = 81.03;
num_nodes_neighbours = 2;
id_nodes_neighbours = [1 4];
if SAVE_FILE
    file_data = [id_node pose_x_node pose_y_node num_nodes_neighbours id_nodes_neighbours];
    dlmwrite(output_filename_nodes, file_data', 'delimiter',',','-append');
end
%--------------------------------------------------------------------------------------------------------------------
%--------------------------------------------------------------------------------------------------------------------

%--------------------------------------------------------------------------------------------------------------------
% define the links of grah-trajectory here
%--------------------------------------------------------------------------------------------------------------------
jump_in_meters = 3; %this is the parameter for subsampling

num_inks = 5;
if SAVE_FILE
    file_data = num_inks;
    dlmwrite(output_filename_links, file_data', 'delimiter',',','-append');
end

id_link = [1 2];
index_init = 1;
index_end = 395;
[pointsx_in_link, pointsy_in_link, n_points] = subsampling_traject(trajectory_x(index_init:index_end), trajectory_y(index_init:index_end), jump_in_meters);
if SAVE_FILE
    file_data = [id_link n_points pointsx_in_link pointsy_in_link];
    dlmwrite(output_filename_links, file_data', 'delimiter',',','-append');
end

id_link = [2 3];
index_init = 395;
index_end = 710;
[pointsx_in_link, pointsy_in_link, n_points] = subsampling_traject(trajectory_x(index_init:index_end), trajectory_y(index_init:index_end), jump_in_meters);
if SAVE_FILE
    file_data = [id_link n_points pointsx_in_link pointsy_in_link];
    dlmwrite(output_filename_links, file_data', 'delimiter',',','-append');
end

id_link = [3 4];
index_init = 710;
index_end = 1160;
[pointsx_in_link, pointsy_in_link, n_points] = subsampling_traject(trajectory_x(index_init:index_end), trajectory_y(index_init:index_end), jump_in_meters);
if SAVE_FILE
    file_data = [id_link n_points pointsx_in_link pointsy_in_link];
    dlmwrite(output_filename_links, file_data', 'delimiter',',','-append');
end

id_link = [4 5];
index_init = 1160;
index_end = 1451;
[pointsx_in_link, pointsy_in_link, n_points] = subsampling_traject(trajectory_x(index_init:index_end), trajectory_y(index_init:index_end), jump_in_meters);
if SAVE_FILE
    file_data = [id_link n_points pointsx_in_link pointsy_in_link];
    dlmwrite(output_filename_links, file_data', 'delimiter',',','-append');
end

id_link = [5 1];
index_init = 1451;
index_end = 1545;
[pointsx_in_link, pointsy_in_link, n_points] = subsampling_traject(trajectory_x(index_init:index_end), trajectory_y(index_init:index_end), jump_in_meters);
if SAVE_FILE
    file_data = [id_link n_points pointsx_in_link pointsy_in_link];
    dlmwrite(output_filename_links, file_data', 'delimiter',',','-append');
end
%--------------------------------------------------------------------------------------------------------------------
%--------------------------------------------------------------------------------------------------------------------

%--------------------------------------------------------------------------------------------------------------------
% define goals in grah-trajectory here
%--------------------------------------------------------------------------------------------------------------------
num_goals = 1;
if SAVE_FILE
    file_data = num_goals;
    dlmwrite(output_filename_goals, file_data', 'delimiter',',','-append');
end

id_goal = 1;
pose_x_goal = 0.0;
pose_y_goal = 0.0;
link_goal = [3 4];
if SAVE_FILE
    file_data = [id_goal pose_x_goal pose_y_goal link_goal];
    dlmwrite(output_filename_goals, file_data', 'delimiter',',','-append');
end
%--------------------------------------------------------------------------------------------------------------------
%--------------------------------------------------------------------------------------------------------------------


figure
hold on
grid
plot(trajectory_x, trajectory_y, '. b', 'linewidth', 2);
plot(pointsx_in_link, pointsy_in_link, '. r', 'linewidth', 5);
ylabel('y (m)');
xlabel('x (m)');
axis([min(trajectory_x)-10 max(trajectory_x)+10 min(trajectory_y)-10 max(trajectory_y)+10]);