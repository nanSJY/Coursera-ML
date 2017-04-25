
load("params.mat");

w = weights(1,:)

a = min(w(:))
b = max(w(:))

ww = zeros(size(w));
for i = 1:400,
  ww(i) = (w(i)-a)/(b-a);
end
ww = reshape(ww,20,20)



colormap(gray);
imshow(ww);

