function [weights,c,b] = training(alpha=0.02,k=6)
  
  generateData(k);
  load("num_X.mat");
  [l,m] = size(num_X);
  n = 50;
  
  weights = randn(n,m);
  c = randn(n,1);
  b = randn(m,1);
  
  for i = 1:100,
    [grad_weights,grad_c,grad_b] = CD1(num_X,weights,c,b);
    weights = weights + alpha*grad_weights;
    b = b + alpha*grad_b;
    c = c + alpha*grad_c;
  end
  
  save params.mat weights c b;
  
end