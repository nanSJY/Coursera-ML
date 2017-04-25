function result = zeroToOne(weight)
  
  a = min(weight);
  b = max(weight);
  
  n = size(weight,2);
  for i = 1:n,
    weight(i) = (weight(i)-a)/(b-a);
  end
  result = weight;
  
end