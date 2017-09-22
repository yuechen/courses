function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
n = size(X, 2);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

X = [ones(m, 1), X];              % add x0 to dataset
g = @(z) 1 ./ (1 + exp(-z));      % define sigmoid function

z2 = Theta1 * X';                 % calculate z2 for each example in X
a2 = [ones(1, m); g(z2)];         % add a2_0

z3 = Theta2 * a2;                 % calculate z3 for each example in X
a3 = g(z3)';                      % apply sigmoid function and transpose

[max, p] = max(a3, [], 2);

% =========================================================================


end
