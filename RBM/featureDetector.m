function featureDetector()
  
  load("params.mat");
  load("num_X.mat");
  for i = 1:1,
    visible_units = num_X(1,:)';
    [hidden_units,reconstructed_visible_units] = propagate(visible_units,weights,c,b);
    
    displayData(visible_units,reconstructed_visible_units);
    pause;
    displayWeights(weights);
  end

end