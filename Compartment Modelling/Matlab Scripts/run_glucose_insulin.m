% Simulation of glucose-insulin model with step input
tspan = [0, 4]; % Time span: 0 to 4 hours
y0 = [0; 0]; % Initial conditions: i(0) = 0, g(0) = 0

% Solve ODE
[t, y] = ode23(@glucose_insulin_step, tspan, y0);

% Plot results in a single graph
figure;
plot(t, y(:,1), 'b-', 'LineWidth', 2, 'DisplayName', 'Insulin Deviation (i)');
hold on;
plot(t, y(:,2), 'r-', 'LineWidth', 2, 'DisplayName', 'Glucose Deviation (g)');
hold off;
title('Insulin and Glucose Deviation over Time');
xlabel('Time (hours)');
ylabel('Deviation (IU/kg or g/kg)');
grid on;
legend('show');