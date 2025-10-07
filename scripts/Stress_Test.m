% Stress Test Scenario Data
convection = [30 30 35 35 40 40];
velocity = [5 7 5 7 5 7];
maxVelocity = [7.38 10.3 7.38 10.3 7.38 10.3];
pressureDrop = [21.96 24.52 21.96 24.52 21.96 24.52];
maxTemp = [75 72 80 77 85 82];

% Create figure with subplots
figure('Name', 'Stress Test Scenario')

% Plot 1: Temperature vs Convection Temperature
subplot(2,2,1)
plot(convection(1:2:end), maxTemp(1:2:end), 'b-o', convection(2:2:end), maxTemp(2:2:end), 'r-o')
xlabel('Convection Temperature (°C)')
ylabel('Maximum Temperature (°C)')
title('Temperature vs Convection')
legend('5 m/s', '7 m/s')
grid on

% Plot 2: Max Velocity vs Convection Temperature
subplot(2,2,2)
plot(convection, maxVelocity, 'b-o')
xlabel('Convection Temperature (°C)')
ylabel('Maximum Velocity (m/s)')
title('Maximum Velocity vs Convection')
grid on

% Plot 3: Pressure Drop vs Convection Temperature
subplot(2,2,3)
plot(convection, pressureDrop, 'b-o')
xlabel('Convection Temperature (°C)')
ylabel('Pressure Drop (Pa)')
title('Pressure Drop vs Convection')
grid on

% Plot 4: Combined plot
subplot(2,2,4)
yyaxis left
plot(convection(1:2:end), maxTemp(1:2:end), 'b-o', convection(2:2:end), maxTemp(2:2:end), 'r-o')
ylabel('Temperature (°C)')
yyaxis right
plot(convection, pressureDrop, 'g-s')
ylabel('Pressure Drop (Pa)')
xlabel('Convection Temperature (°C)')
title('Combined Analysis')
legend('Temp (5 m/s)', 'Temp (7 m/s)', 'Pressure Drop')
grid on