nn_params = [1 1 1 1 1 1];
X = [1];
y = [2];
lambda = 0;

[J nn_params] = costFunction(nn_params, X, y, lambda,1,1,2)

Theta1 = reshape(nn_params(1:1 * (1 + 1)), ...
               1, (1 + 1))

Theta2 = reshape(nn_params((1 + (1 * (1 + 1))):end), ...
               2, (1 + 1))