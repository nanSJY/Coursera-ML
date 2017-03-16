function W = randInitializeWeight(S_in, S_out)
  
  W = zeros(S_out, S_in+1);
  epsilon = 0.12;
  W = rand(S_out,S_in+1)*2*epsilon - epsilon;  % -epsilon ~ +epsilon
  
end