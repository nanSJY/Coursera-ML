function displayData(visible_units,reconstructed_visible_units)
  
  array1 = reshape(visible_units,20,20);
  array3 = reshape(reconstructed_visible_units,20,20);
  %array4 = reshape(weights,);
  array = [array1,array3];
  
  colormap(gray);
  imshow(array);

end