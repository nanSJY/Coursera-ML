%% I. Loading and Visualizing Data

load("ex3data1.mat");
[m,n] = size(X);

displayX = X(randperm(m)(1:400),:);
displayData(displayX,20);