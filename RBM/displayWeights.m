function displayWeights(weights)
  
  
  array = zeros(104,209)+255;
  for i = 1:50,
    a = floor((i+9)/10);
    b = i - 10*(a-1);
    array((a-1)*21+[1:20],(b-1)*21+[1:20]) = reshape(weights(i,:),20,20);
    %array((a-1)*21+[1:20],(b-1)*21+[1:20]) = reshape(zeroToOne(weights(i,:)),20,20);
  end
  colormap(gray);
  imshow(array);
  
  
  
end