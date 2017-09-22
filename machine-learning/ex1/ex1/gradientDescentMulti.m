function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
n = length(theta); % number of features
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    delta = zeros(n, 1);
    for i = 1:n
        delta(i, 1) = sum((X * theta - y)' * X(:, i));
    end

    theta = theta - (alpha / m) * delta;

    % Save the cost J in every iteration
    J_history(iter) = computeCostMulti(X, y, theta);
end

end
