function [J grad] = costFunction(nn_params, X, y, lambda,
                                            input_layer_size,...
                                            hidden_layer_size,...
                                            output_layer_size)
  
  J = 0;
  m = size(X, 1);
  
  Theta1 = reshape(nn_params(1:hidden_layer_size*(input_layer_size+1)),...
                hidden_layer_size,  input_layer_size+1 );
                
  Theta2 = reshape(nn_params(1+hidden_layer_size*(input_layer_size+1):end),...
                output_layer_size,  hidden_layer_size+1 );
                                         
  Theta1_grad = zeros(size(Theta1));
  Theta2_grad = zeros(size(Theta2));
  num_labels = size(Theta2,1);
  
  for i = 1:m
    % Forward Propagation
    a1 = [1; X(i,:)'];
    
    z2 = Theta1*a1;
    a2 = [1;sigmoid(z2)];
    
    z3 = Theta2*a2;
    a3 = sigmoid(z3);
    
    h = a3;
    Y = zeros(num_labels,1);
    for l = 1:num_labels,
      if l == y(i),
        Y(l) = 1;
        break
      end
    end
    
    J += sum(Y.*log(h) + (1-Y).*log(1-h));
    
    % Back Propagation
    delta3 = a3 - Y;
    delta2 = Theta2(:,2:end)'*delta3.*sigmoidGradient(z2);
    
    Theta2_grad += delta3*a2';
    Theta1_grad += delta2*a1';
    
  end
  
  Theta2_grad /= m;
  Theta1_grad /= m;
  J = -J/m;
  
  % Regularization
  J += ( sum(sum(Theta1(:,2:end).^2)) + sum(sum(Theta2(:,2:end).^2)) )*lambda/(2*m);
  Theta2_grad(:,2:end) += lambda*Theta2(:,2:end)/m;
  Theta1_grad(:,2:end) += lambda*Theta1(:,2:end)/m;
  
  grad = [Theta1_grad(:) ; Theta2_grad(:)];
end








