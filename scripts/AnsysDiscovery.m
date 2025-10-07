clear all; close all;

% Energy Saving Scenario Data (25°C, 27°C)
es_vel = [3 4 3 4];
es_maxV = [4.69 5.52 4.69 5.52];
es_maxT = [45.2 43.3 47.1 45.3];
es_pDrop = [15.1 18.2 15.1 18.2];
es_conv = [25 25 27 27];
es_labels = {'Energy Saving (25°C, 3m/s)', 'Energy Saving (25°C, 4m/s)', ...
    'Energy Saving (27°C, 3m/s)', 'Energy Saving (27°C, 4m/s)'};

% Peak Load Scenario Data (22°C, 27°C)
pl_vel = [5 7 5 7];
pl_maxV = [7.38 10.3 7.38 10.3];
pl_maxT = [64.8 63.2 70.7 67.7];
pl_pDrop = [21.97 24.52 21.97 24.52];
pl_conv = [22 22 27 27];
pl_labels = {'Peak Load (22°C, 5m/s)', 'Peak Load (22°C, 7m/s)', ...
    'Peak Load (27°C, 5m/s)', 'Peak Load (27°C, 7m/s)'};

% Stress Test Scenario Data (30°C, 35°C, 40°C)
st_vel = [5 7 5 7 5 7];
st_maxV = [7.38 10.3 7.38 10.3 7.38 10.3];
st_maxT = [75 72 80 77 85 82];
st_pDrop = [21.96 24.52 21.96 24.52 21.96 24.52];
st_conv = [30 30 35 35 40 40];
st_labels = {'Stress Test (30°C, 5m/s)', 'Stress Test (30°C, 7m/s)', ...
    'Stress Test (35°C, 5m/s)', 'Stress Test (35°C, 7m/s)', ...
    'Stress Test (40°C, 5m/s)', 'Stress Test (40°C, 7m/s)'};

% Hotspot Scenario Data (22°C, 27°C)
hs_vel = [5 5];
hs_maxV = [7.38 7.53];
hs_maxT = [70 75];
hs_pDrop = [21.97 21.97];
hs_conv = [22 27];
hs_labels = {'Hotspot (22°C, 5m/s)', 'Hotspot (27°C, 5m/s)'};

% Parametric Scenario Data
par_vel = [3 5 7 3 5 7 3 5 7];
par_maxV = [4.94 7.38 10.3 4.94 7.38 10.3 4.94 7.38 10.3];
par_maxT = [45 55.7 65.8 50.9 60.6 70.7 53.9 63.6 73];
par_pDrop = [15.03 21.97 24.5 15.03 21.96 24.52 15.03 21.97 24.5];
par_conv = [22 22 22 27 27 27 30 30 30];
par_labels = {'Para (22°C, 3m/s)', 'Para (22°C, 5m/s)', 'Para (22°C, 7m/s)', ...
    'Para (27°C, 3m/s)', 'Para (27°C, 5m/s)', 'Para (27°C, 7m/s)', ...
    'Para (30°C, 3m/s)', 'Para (30°C, 5m/s)', 'Para (30°C, 7m/s)'};

% Create figure with 4 subplots
figure('Position', [100, 100, 1200, 800]);

% 1. Maximum Velocity vs Inlet Velocity
subplot(2,2,1);
plot(es_vel, es_maxV, 'o-', pl_vel, pl_maxV, 'o-', st_vel, st_maxV, 'o-', ...
    hs_vel, hs_maxV, 'o-', par_vel, par_maxV, 'o-', 'LineWidth', 1.5);
hold on;

% Combine all data for label arrangement
all_vel = [es_vel pl_vel st_vel hs_vel par_vel];
all_maxV = [es_maxV pl_maxV st_maxV hs_maxV par_maxV];
all_labels = [es_labels pl_labels st_labels hs_labels par_labels];

arrangeLabels(all_vel, all_maxV, all_labels, gca);

xlabel('Inlet Velocity [m/s]');
ylabel('Maximum Velocity [m/s]');
title('Maximum Velocity vs Inlet Velocity');
grid on;
legend('Energy Saving', 'Peak Load', 'Stress Test', 'Hotspot', 'Parametric', 'Location', 'best');

% 2. Maximum Temperature vs Inlet Velocity
subplot(2,2,2);
plot(es_vel, es_maxT, 'o-', pl_vel, pl_maxT, 'o-', st_vel, st_maxT, 'o-', ...
    hs_vel, hs_maxT, 'o-', par_vel, par_maxT, 'o-', 'LineWidth', 1.5);
hold on;

% Combine all data for label arrangement
all_maxT = [es_maxT pl_maxT st_maxT hs_maxT par_maxT];
arrangeLabels(all_vel, all_maxT, all_labels, gca);

xlabel('Inlet Velocity [m/s]');
ylabel('Maximum Temperature [°C]');
title('Maximum Temperature vs Inlet Velocity');
grid on;
legend('Energy Saving', 'Peak Load', 'Stress Test', 'Hotspot', 'Parametric', 'Location', 'best');

% 3. Pressure Drop vs Inlet Velocity
subplot(2,2,3);
plot(es_vel, es_pDrop, 'o-', pl_vel, pl_pDrop, 'o-', st_vel, st_pDrop, 'o-', ...
    hs_vel, hs_pDrop, 'o-', par_vel, par_pDrop, 'o-', 'LineWidth', 1.5);
hold on;

% Combine all data for label arrangement
all_pDrop = [es_pDrop pl_pDrop st_pDrop hs_pDrop par_pDrop];
arrangeLabels(all_vel, all_pDrop, all_labels, gca);

xlabel('Inlet Velocity [m/s]');
ylabel('Pressure Drop [Pa]');
title('Pressure Drop vs Inlet Velocity');
grid on;
legend('Energy Saving', 'Peak Load', 'Stress Test', 'Hotspot', 'Parametric', 'Location', 'best');

% 4. Maximum Temperature vs Convection
subplot(2,2,4);
plot(es_conv, es_maxT, 'o-', pl_conv, pl_maxT, 'o-', st_conv, st_maxT, 'o-', ...
    hs_conv, hs_maxT, 'o-', par_conv, par_maxT, 'o-', 'LineWidth', 1.5);
hold on;

% Combine all data for label arrangement
all_conv = [es_conv pl_conv st_conv hs_conv par_conv];
arrangeLabels(all_conv, all_maxT, all_labels, gca);

xlabel('Convection Temperature [°C]');
ylabel('Maximum Temperature [°C]');
title('Maximum Temperature vs Convection');
grid on;
legend('Energy Saving', 'Peak Load', 'Stress Test', 'Hotspot', 'Parametric', 'Location', 'best');

% Format figure
set(gcf, 'Color', 'white');
set(findall(gcf, 'type', 'axes'), 'FontSize', 10);



function arrangeLabels(x, y, labels, ax)
    xrange = diff(xlim(ax));
    yrange = diff(ylim(ax));
    dx = xrange * 0.02; % Horizontal offset
    dy = yrange * 0.02; % Vertical spacing between stacked labels
    
    % Group nearby points
    groups = {};
    used = false(size(x));
    
    for i = 1:length(x)
        if ~used(i)
            group = i;
            used(i) = true;
            for j = (i+1):length(x)
                if ~used(j) && abs(x(j)-x(i))/xrange < 0.05 && abs(y(j)-y(i))/yrange < 0.05
                    group = [group j];
                    used(j) = true;
                end
            end
            groups{end+1} = group;
        end
    end
    
    % Place labels for each group
    for g = 1:length(groups)
        group = groups{g};
        base_x = mean(x(group));
        base_y = max(y(group));
        
        for i = 1:length(group)
            idx = group(i);
            text(base_x + dx, base_y + (i-1)*dy, labels{idx}, ...
                'FontSize', 6, 'VerticalAlignment', 'bottom', ...
                'HorizontalAlignment', 'left');
        end
    end
end