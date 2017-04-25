function f = sigmoid(z)
  
  f = 1./(1+exp(-z));
  %f = max(0,z);
  
end