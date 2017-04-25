function generateData(k)
  
  load("data.mat");
  index = find(y==k);
  num_X = X(index,:);
  
  [m,n] = size(num_X);
  for i = 1:m,
    num_X(i,:) = num_X(i,:) > (sum(num_X(i,:))/n);
  end
  
  save num_X.mat num_X;
end
