function result = normalize(array)
  
  [m,n] = size(array);
  avg = sum(array)/n;
  array = array - avg+0.5;
  sigma2 = sum(array.^2)/n;
  result = array/sqrt(sigma2);
  
end