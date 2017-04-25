function [sample_result] = sample(pro)
  
  [m,n] = size(pro);
  randNum = rand(m,n);
  sample_result = randNum < pro ;
  
end