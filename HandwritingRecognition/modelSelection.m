function hidden_layer_size = modelSelection()
  
  load("ex3data1.mat");
  
  m = size(X,1);
  sel = randperm(m);
  training_set_X   = X(sel(1:floor(m*0.7)),:);
  validation_set_X = X(sel(floor(m*0.7)+1:end),:);
  training_set_y   = y(sel(1:floor(m*0.7)),:);
  validation_set_y = y(sel(floor(m*0.7)+1:end),:);
  
  hidden_layer_size_list = [21 22 23 24 25 26 27 28 29 30]'; 
  validation_error = zeros(size(hidden_layer_size_list));
  
 for i = 1:length(hidden_layer_size_list),
    
    [Theta1 Theta2] = training(training_set_X, training_set_y,...
                                    hidden_layer_size_list(i));
    pred = predict(Theta1, Theta2, validation_set_X);
    validation_error(i) = mean(validation_set_y ~= pred);
    
    fprintf("\nhidden_unit = %f\nvalidation_error = %f\n",...
                                            hidden_layer_size_list(i),...
                                            validation_error(i)*100 );
  end
  
  [m pos] = min(validation_error);
  hidden_layer_size = hidden_layer_size_list(pos);
  
end



