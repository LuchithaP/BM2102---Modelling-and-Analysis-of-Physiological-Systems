

% Solve the system 
[t, y] = ode23('bolies_model', [0, 4], [0, 0, 0]);

% Plot the results
figure;
plot(t, y, 'LineWidth', 1.5); 
grid on;                      

% Add legend and labels
legend('Glucose', 'Insulin', 'Glucogon', 'Location', 'best');
xlabel('Time (hours)');
ylabel('Glucose / Insulin / Glucogon level');

% Add title
title('Plots of Glucose, Insulin and Glucogon');
