% Simulation of glucose-insulin model with insulin infusion
tspan = [0, 4]; % Time span: 0 to 4 hours
y0 = [0; 0]; % Initial conditions: i(0) = 0, g(0) = 0

% Solve ODE
[t, y] = ode23(@diabetic_patient_insulin_infusion, tspan, y0);

% Plot results in a single graph
figure;
plot(t, y(:,1), 'b-', 'LineWidth', 2, 'DisplayName', 'Insulin Deviation (i)');
hold on;
plot(t, y(:,2), 'r-', 'LineWidth', 2, 'DisplayName', 'Glucose Deviation (g)');
hold off;
title('Diabetic patient with Insulin infusion');
xlabel('Time (hours)');
ylabel('Deviation (IU/kg or g/kg)');
grid on;
legend('show');