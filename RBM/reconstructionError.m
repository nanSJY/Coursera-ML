function error = reconstructionError()
  
  error = 0;
  load("params.mat");
  load("num_X.mat");
  
  l = size(num_X,1);
  for i = 1:l,
    [hidden_units,reconstructed_visible_units] = propagate(num_X(i,:)',weights,c,b);
    error = error + norm(reconstructed_visible_units-num_X(i,:));
  end
  
end