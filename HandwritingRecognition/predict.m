function pred = predict(Theta1,Theta2,X)
  
  [m n] = size(X);
  
  %%  Forward Propagation
  
  a1 = [ones(m,1),X]';
  
  z2 = Theta1*a1;
  a2 = [ones(1,m);sigmoid(z2)];
  
  z3 = Theta2*a2;
  a3 = sigmoid(z3);
  
  [m position] = max(a3);
  pred = position';
end
  