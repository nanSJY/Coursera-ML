%% I. Loading and Visualizing Data

load("ex3data1.mat");
[m,n] = size(X);

displayX = X(randperm(m)(1:400),:);
displayData(displayX,20);

%% II. Training Parameters
%[Theta1 Theta2] = training(X, y, 28)
%save nnWeight.mat Theta1 Theta2;

%% III. Loading Theta-parameters and Predicting

load("nnWeight.mat");
pred = predict(Theta1, Theta2, X);
fprintf("\n Training Error = %f\n",mean(y~=pred)*100);

for j = 1:m,
  if pred(j) ~= y(j),
    displayData( X(j,:), 20);
    fprintf("\ny=%f predict=%f\n",y(j),pred(j) );
    s = input('Paused - press enter to continue, q to exit:','s');
    if s == 'q'
      break
    end
  end
end


order = randperm(m);
for i = 1:m,
  displayData( X(order(i),:), 20);
  fprintf("\ny=%f predict=%f\n",y(order(i)),pred(order(i)));
  
  s = input('Paused - press enter to continue, q to exit:','s');
  if s == 'q'
    break
  end
end


