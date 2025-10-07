% Complete data arrays
scenarios = {'Energy Saving (25°C, 3m/s)', 'Energy Saving (25°C, 4m/s)', ...
            'Energy Saving (27°C, 3m/s)', 'Energy Saving (27°C, 4m/s)', ...
            'Peak Load (22°C, 5m/s)', 'Peak Load (22°C, 7m/s)', ...
            'Peak Load (27°C, 5m/s)', 'Peak Load (27°C, 7m/s)', ...
            'Stress Test (30°C, 5m/s)', 'Stress Test (30°C, 7m/s)', ...
            'Stress Test (35°C, 5m/s)', 'Stress Test (35°C, 7m/s)', ...
            'Stress Test (40°C, 5m/s)', 'Stress Test (40°C, 7m/s)', ...
            'Hotspot (22°C, 5m/s)', 'Hotspot (27°C, 5m/s)', ...
            'Para (22°C, 3m/s)', 'Para (22°C, 5m/s)', 'Para (22°C, 7m/s)', ...
            'Para (27°C, 3m/s)', 'Para (27°C, 5m/s)', 'Para (27°C, 7m/s)', ...
            'Para (30°C, 3m/s)', 'Para (30°C, 5m/s)', 'Para (30°C, 7m/s)'};

velocity = [3 4 3 4 5 7 5 7 5 7 5 7 5 7 5 5 3 5 7 3 5 7 3 5 7];

cooling_load = [0.01911 0.02548 0.01897 0.02532 ... % Energy Saving
                0.03801 0.05539 0.03801 0.05322 ... % Peak Load
                0.05539 0.03763 0.03701 0.05184 0.03641 0.05097 ... % Stress Test
                0.02962 0.02845 ... % Hotspot
                0.01975 0.02962 0.05539 0.01897 0.03801 0.05322 0.02255 0.03758 0.05262]; % Parametric

fan_power = [0.00155 0.00250 0.00155 0.00250 ... % Energy Saving
             0.00445 0.00740 0.00445 0.00705 ... % Peak Load
             0.00445 0.00705 0.00445 0.00705 0.00445 0.00705 ... % Stress Test
             0.00370 0.00370 ... % Hotspot
             0.00155 0.00370 0.00740 0.00155 0.00445 0.00705 0.00155 0.00445 0.00740]; % Parametric

cop = cooling_load ./ fan_power;

% Define colors for different scenario types
colors = {[0 0.4470 0.7410], ... % Energy Saving - blue
         [0.8500 0.3250 0.0980], ... % Peak Load - orange
         [0.4940 0.1840 0.5560], ... % Stress Test - purple
         [0.4660 0.6740 0.1880], ... % Hotspot - green
         [0.3010 0.7450 0.9330]}; % Parametric - light blue

 % Create figure with white background
figure('Position', [100 100 1200 400], 'Color', 'white');

% Plot 1: COP vs Velocity
subplot(1,3,1)
scatter(velocity, cop, 50, 'b', 'o', 'filled')
hold on
% Add trend line
p = polyfit(velocity, cop, 2);
v_fit = linspace(min(velocity), max(velocity), 100);
cop_fit = polyval(p, v_fit);
plot(v_fit, cop_fit, 'r--', 'LineWidth', 1)

grid on
xlabel('Velocity (m/s)')
ylabel('COP')
title('COP vs. Velocity')
xlim([2.5 7.5])
ylim([7 13])
legend('Data Points', 'Trend Line')

% Add text labels with adjusted positions
for i = 1:length(velocity)
    if mod(i,3) == 0
        text(velocity(i)+0.1, cop(i), scenarios{i}, 'FontSize', 8)
    elseif mod(i,3) == 1
        text(velocity(i)+0.1, cop(i)+0.3, scenarios{i}, 'FontSize', 8)
    else
        text(velocity(i)+0.1, cop(i)-0.3, scenarios{i}, 'FontSize', 8)
    end
end

% Plot 2: Cooling Load vs Velocity
subplot(1,3,2)
scatter(velocity, cooling_load, 50, 'b', 'o', 'filled')
hold on
% Add trend line
p = polyfit(velocity, cooling_load, 2);
cooling_fit = polyval(p, v_fit);
plot(v_fit, cooling_fit, 'r--', 'LineWidth', 1)

grid on
xlabel('Velocity (m/s)')
ylabel('Cooling Load (kW)')
title('Cooling Load vs. Velocity')
xlim([2.5 7.5])
legend('Data Points', 'Trend Line')

% Add text labels with adjusted positions
for i = 1:length(velocity)
    if mod(i,3) == 0
        text(velocity(i)+0.1, cooling_load(i), scenarios{i}, 'FontSize', 8)
    elseif mod(i,3) == 1
        text(velocity(i)+0.1, cooling_load(i)+0.002, scenarios{i}, 'FontSize', 8)
    else
        text(velocity(i)+0.1, cooling_load(i)-0.002, scenarios{i}, 'FontSize', 8)
    end
end

% Plot 3: Fan Power vs Velocity
subplot(1,3,3)
scatter(velocity, fan_power, 50, 'b', 'o', 'filled')
hold on
% Add trend line
p = polyfit(velocity, fan_power, 2);
power_fit = polyval(p, v_fit);
plot(v_fit, power_fit, 'r--', 'LineWidth', 1)

grid on
xlabel('Velocity (m/s)')
ylabel('Fan Power (kW)')
title('Fan Power vs. Velocity')
xlim([2.5 7.5])
legend('Data Points', 'Trend Line')

% Add text labels with adjusted positions
for i = 1:length(velocity)
    if mod(i,3) == 0
        text(velocity(i)+0.1, fan_power(i), scenarios{i}, 'FontSize', 8)
    elseif mod(i,3) == 1
        text(velocity(i)+0.1, fan_power(i)+0.0002, scenarios{i}, 'FontSize', 8)
    else
        text(velocity(i)+0.1, fan_power(i)-0.0002, scenarios{i}, 'FontSize', 8)
    end
end

% Main title
sgtitle('Server Cooling Performance Analysis')

% Adjust layout
set(gcf, 'Color', 'white')
set(findall(gcf,'-property','FontSize'),'FontSize', 10) 