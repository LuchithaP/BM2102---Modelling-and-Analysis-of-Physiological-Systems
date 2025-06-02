function yp = glucose_insulin_bolus(t, y)
    % y(1) = insulin deviation (i), y(2) = glucose deviation (g)
    % Bolus input approximated as a narrow pulse: A(t) = 1 for 0 <= t < 0.01, else 0
    A = 1-sign(t) % Scaled to approximate delta function
    a = [-0.8, 0.2; -5, -2]; % Coefficient matrix
    b = [0; A]; % Input vector
    yp = a * y + b;
end