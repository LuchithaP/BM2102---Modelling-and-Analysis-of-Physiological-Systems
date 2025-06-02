function yp = diabetic_patient_insulin_infusion(t, y)
    % y(1) = insulin deviation (i), y(2) = glucose deviation (g)
    % Coefficients for the system: di/dt = -0.8i + 0.2g, dg/dt = -5i - 2g + A(t)
    % % Insulin levels are very low (0.01) 
    % Insulin infusion of 0.1
    A = 1; % Step input A(t) = 1 g/kg/h for t > 0
    a = [-0.8, 0.01; -5, -2]; % Coefficient matrix
    b = [0.1; A]; % Input vector
    yp = a * y + b;
end