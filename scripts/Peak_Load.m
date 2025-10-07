% Peak Load Scenario Data
velocity = [5 7 5 7];
convection = [22 22 27 27];
maxVelocity = [7.38 10.3 7.38 10.3];
pressureDrop = [21.97 24.52 21.97 24.52];
maxTemp = [64.8 63.2 70.7 67.7];

% Create figure with subplots
figure('Name', 'Peak Load Scenario')

% Plot 1: Temperature vs Velocity for different convection temps
subplot(2,2,1)
plot(velocity(1:2), maxTemp(1:2), 'b-o', velocity(3:4), maxTemp(3:4), 'r-o')
xlabel('Inlet Velocity (m/s)')
ylabel('Maximum Temperature (°C)')
title('Temperature vs Velocity')
legend('Conv 22°C', 'Conv 27°C')
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
legend('Temp (22°C)', 'Temp (27°C)', 'Pressure Drop')
grid on