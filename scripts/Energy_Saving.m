% Energy Saving Scenario Data
velocity = [3 4 3 4];
convection = [25 25 27 27];
maxVelocity = [4.69 5.52 4.69 5.52];
pressureDrop = [15.1 18.2 15.1 18.2];
maxTemp = [45.2 43.3 47.1 45.3];

% Create figure with subplots
figure('Name', 'Energy Saving Scenario')

% Plot 1: Temperature vs Velocity for different convection temps
subplot(2,2,1)
plot(velocity(1:2), maxTemp(1:2), 'b-o', velocity(3:4), maxTemp(3:4), 'r-o')
xlabel('Inlet Velocity (m/s)')
ylabel('Maximum Temperature (°C)')
title('Temperature vs Velocity')
legend('Conv 25°C', 'Conv 27°C')
grid on

% Plot 2: Max Velocity vs Inlet Velocity
subplot(2,2,2)
plot(velocity, maxVelocity, 'b-o')
xlabel('Inlet Velocity (m/s)')
ylabel('Maximum Velocity (m/s)')
title('Maximum Velocity vs Inlet Velocity')
grid on

% Plot 3: Pressure Drop vs Velocity
subplot(2,2,3)
plot(velocity, pressureDrop, 'b-o')
xlabel('Inlet Velocity (m/s)')
ylabel('Pressure Drop (Pa)')
title('Pressure Drop vs Velocity')
grid on

% Plot 4: Combined plot
subplot(2,2,4)
yyaxis left
plot(velocity(1:2), maxTemp(1:2), 'b-o', velocity(3:4), maxTemp(3:4), 'r-o')
ylabel('Temperature (°C)')
yyaxis right
plot(velocity, pressureDrop, 'g-s')
ylabel('Pressure Drop (Pa)')
xlabel('Inlet Velocity (m/s)')
title('Combined Analysis')
legend('Temp (25°C)', 'Temp (27°C)', 'Pressure Drop')
grid on