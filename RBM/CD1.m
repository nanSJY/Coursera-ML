function [grad_weights,grad_c,grad_b] = CD1(X,weights,c,b)
  
  [n,m] = size(weights);
  grad_weights = zeros(n,m);
  grad_c = zeros(n,1);
  grad_b = zeros(m,1);
  
  [l,features] = size(X);
  for i = 1:l,
    
    v0 = X(i,:)';
    [h0,v1] = propagate(v0,weights,c,b);
    
    grad_weights = grad_weights + sigmoid(weights*v0+c)*(v0') - sigmoid(weights*v1+c)*(v1');
    grad_b = grad_b + v0 - v1;
    grad_c = grad_c + sigmoid(weights*v0+c) - sigmoid(weights*v1+c);
    
  end
end