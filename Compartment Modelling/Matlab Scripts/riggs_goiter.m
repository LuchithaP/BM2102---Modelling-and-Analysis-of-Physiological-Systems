function yp = riggs_goiter(t, y)
    % y(1) = I (iodine in plasma), y(2) = G (iodine in thyroid gland), y(3) = H (iodine in hormone)
    % Coefficients from Riggs model
    a = [-2.52, 0, 0.08; 0.84, -0.01, 0; 0, 0.01, -0.1]; % Coefficient matrix
    b = [25; 0; 0]; % Input vector (iodine intake  25 µg/day)
    yp = a * y + b;
end