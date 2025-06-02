
tspan = [0, 10]; % Time span: 0 to 10 days
y0 = [81.2, 6821, 682]'; % Initial conditions: i(0) = 81.2, g(0) = 6821, H(0) = 682

% Solve ODE
[t, y] = ode23(@riggs_iodine, tspan, y0);


% Plot results in a single graph
figure;
plot(t, y(:,1), 'b-', 'LineWidth', 2, 'DisplayName', 'Plasma Iodine (I)');
hold on;
plot(t, y(:,2), 'r-', 'LineWidth', 2, 'DisplayName', 'Gland Iodine (G)');
hold on;
plot(t, y(:, 3),  'r-', 'LineWidth', 2, 'DisplayName', 'Hormone Iodine (H)');
title('150 ug Iodine Intake');
xlabel('Time (days)');
ylabel('Deviation (IU/kg or g/kg)');
grid on;
legend('show');