function [Theta1,Theta2] = training(X, y, hidden_layer_size)

  %load("ex3data1.mat");
  input_layer_size = 400;
  %hidden_layer_size = 25;
  output_layer_size = 10;
  
  InitTheta1 = randInitializeWeight(input_layer_size,hidden_layer_size);  
  InitTheta2 = randInitializeWeight(hidden_layer_size,output_layer_size); 
  
  init_nn_params = [InitTheta1(:) ; InitTheta2(:)];
  
  options = optimset("MaxIter",50);
  lambda = 1;
  costFunction = @(nn_params) costFunction(nn_params, X, y, lambda,...
                                            input_layer_size,...
                                            hidden_layer_size,...
                                            output_layer_size);                                     
  [nn_params, cost] = fmincg(costFunction,init_nn_params,options);
  
  Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

  Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 output_layer_size, (hidden_layer_size + 1));

end