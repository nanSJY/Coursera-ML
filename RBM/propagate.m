function [hidden_units,reconstructed_visible_units] = ...
                                            propagate(visible_units,weights,c,b)
                                            
  hidden_units_pro = sigmoid(weights*visible_units + c);
  hidden_units = sample(hidden_units_pro);  
  
  reconstructed_visible_units_pro = sigmoid(weights'*hidden_units + b);
  reconstructed_visible_units = sample(reconstructed_visible_units_pro);
   
end