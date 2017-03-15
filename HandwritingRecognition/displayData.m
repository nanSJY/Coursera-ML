function displayData(X,example_width)
  
  %% 71*71 20*20
  
  [m n] = size(X);
  display_rows = floor(sqrt(m));
  display_cols = ceil(m/display_rows);
  example_height = n/example_width;
  display_array = ones(display_rows*example_height,display_cols*example_width); 
  
  index = 0;
  for i = 1:display_rows
    for j = 1:display_cols
      index += 1;
      if index>m
        break
        break
      end
      display_array( (i-1)*example_height+(1:example_height), ...
                     (j-1)*example_width +(1:example_width) ) = ...
                     reshape( X( (i-1)*display_cols+j,:), example_height, example_width );
    end
  end
  
  imagesc(display_array, [-1,1]);
  colormap(gray);
  
end