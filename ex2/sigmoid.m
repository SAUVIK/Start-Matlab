function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
%g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).


%e=exp(-z);
%sum=1+e;
%g=1./sum;
%g=sigmoid(z);
g = 1 ./ (1 + exp(-z));
% =============================================================

end
