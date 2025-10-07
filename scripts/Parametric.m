% Parametric Sweep Data
convection = [22 22 22 27 27 27 30 30 30];
velocity = [3 5 7 3 5 7 3 5 7];
maxVelocity = [4.94 7.38 10.3 4.94 7.38 10.3 4.94 7.38 10.3];
pressureDrop = [15.03 21.97 24.5 15.03 21.96 24.52 15.03 21.97 24.5];
maxTemp = [45 55.7 65.8 50.9 60.6 70.7 53.9 63.6 73];

% Create figure with subplots
figure('Name', 'Parametric Sweep Analysis')

% Plot 1: Temperature vs Velocity for different convection temps
subplot(2,2,1)
plot(velocity(1:3), maxTemp(1:3), 'b-o', ...
     velocity(4:6), maxTemp(4:6), 'r-o', ...
     velocity(7:9), maxTemp(7:9), 'g-o')
xlabel('Inlet Velocity (m/s)')
ylabel('Maximum Temperature (°C)')
title('Temperature vs Velocity')
legend('22°C', '27°C', '30°C')
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

% Plot 4: 3D Surface Plot
subplot(2,2,4)
[X,Y] = meshgrid(unique(velocity), unique(convection));
Z = reshape(maxTemp, [3,3]);
surf(X,Y,Z)
xlabel('Inlet Velocity (m/s)')
ylabel('Convection Temperature (°C)')
zlabel('Maximum Temperature (°C)')
title('3D Temperature Analysis')
colorbar