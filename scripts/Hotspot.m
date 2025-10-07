% Hotspot Analysis Data
convection = [22 27];
velocity = [5 5];
maxVelocity = [7.38 7.53];
pressureDrop = [21.97 21.97];
maxTemp = [70 75];

% Create figure with subplots
figure('Name', 'Hotspot Analysis')

% Plot 1: Temperature vs Convection Temperature
subplot(2,2,1)
plot(convection, maxTemp, 'b-o')
xlabel('Convection Temperature (°C)')
ylabel('Maximum Temperature (°C)')
title('Temperature vs Convection')
grid on

% Plot 2: Max Velocity vs Convection Temperature
subplot(2,2,2)
plot(convection, maxVelocity, 'r-o')
xlabel('Convection Temperature (°C)')
ylabel('Maximum Velocity (m/s)')
title('Maximum Velocity vs Convection')
grid on

% Plot 3: Pressure Drop vs Convection Temperature
subplot(2,2,3)
plot(convection, pressureDrop, 'g-o')
xlabel('Convection Temperature (°C)')
ylabel('Pressure Drop (Pa)')
title('Pressure Drop vs Convection')
grid on

% Plot 4: Combined Analysis
subplot(2,2,4)
yyaxis left
plot(convection, maxTemp, 'b-o')
ylabel('Temperature (°C)')
yyaxis right
plot(convection, maxVelocity, 'r-s')
ylabel('Velocity (m/s)')
xlabel('Convection Temperature (°C)')
title('Combined Analysis')
legend('Max Temperature', 'Max Velocity')
grid on