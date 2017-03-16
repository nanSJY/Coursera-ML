%% I. Loading and Visualizing Data

load("ex3data1.mat");
[m,n] = size(X);

displayX = X(randperm(m)(1:400),:);
displayData(displayX,20);

%% II. Training Parameters
[Theta1 Theta2] = training(X, y, 28)
save nnWeight.mat Theta1 Theta2;

%% III. Loading Theta-parameters and Predicting

load("nnWeight.mat");
pred = predict(Theta1, Theta2, X);
fprintf("\n Training Error = %f\n",mean(y~=pred)*100);
