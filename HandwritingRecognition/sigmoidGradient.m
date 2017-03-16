function g = sigmoidGradient(Z)
  
  g = zeros(size(Z));
  g = sigmoid(Z).*(1-sigmoid(Z));
  
end