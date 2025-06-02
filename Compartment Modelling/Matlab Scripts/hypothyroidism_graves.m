
function yp = hypothyroidism_graves(t, y)
    % y(1) = I (iodine in plasma), y(2) = G (iodine in thyroid gland), y(3) = H (iodine in hormone)
    % Coefficients from Riggs model
    a = [-2.52, 0, 0.08; 0.84, -0.08, 0; 0, 0.08, -0.1]; % Hypothyroidism due to autoimmune thyroid disease
    b = [150; 0; 0]; % Input vector (iodine intake drop to 15 µg/day)
    yp = a * y + b;
end