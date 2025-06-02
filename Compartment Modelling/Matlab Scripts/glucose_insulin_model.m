
t = 0:0.01:10;

% Analytical solutions
g_t = exp(-1.4.*t).*((-4/13)*cos(0.8.*t) + (37/52)*sin(0.8.*t)) + 4/13;
i_t = exp(-1.4.*t).*(-(1/13)*cos(0.8.*t) - (7/52)*sin(0.8.*t)) + 1/13;

% Plot solutions
figure;
plot(t, g_t, 'b-', t, i_t, 'r--');  % Optional: add line styles for clarity
hold on;
grid on;
legend('Glucose', 'Insulin', 'Location', 'best');
xlabel('Time (hours)');
ylabel('Glucose/Insulin level');
title('Plots of g(t) and i(t)');
