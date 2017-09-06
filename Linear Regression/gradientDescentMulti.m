function q = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

 %theta_prev = theta;

    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
%p=size(X,2);
%for i=1:p
%    deriv=((X*theta_prev - y)'*X(:, i))/m;
%    theta=theta_prev-alpha*deriv;
%end
%J_history(iter) = computeCostMulti(X, y, theta);
%J_history(iter) = computeCostMulti(X, y, theta);
%end
    % ============================================================

    % Save the cost J in every iteration    
    %J_history(iter) = computeCostMulti(X, y, theta);
    
     h = X * theta;
    errors = h - y;
    delta = X' * errors;
    theta = theta - (alpha / m) * delta;
    disp(theta)

    % ============================================================

    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);
    disp(J_history)

end

