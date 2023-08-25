clc
close all
a=imread('C:\Users\shubham\Downloads\photo-1542840843-3349799cded6.jpg');
figure 
imshow(a)
b=rgb2gray(a);
figure
imshow(b)
k=imhist(b);

% for i=1:length(k)
  %  p=k(i)/256;
   % disp(p)
   %end%

min=5;
max=192;
k2=double(k);


% Apply the formula.
k3=(k2-min)./(max-min);
 
% Multiply with maximum possible value.
k4=k3.*255;
 
% Convert the final result into uint8.
 k5=uint8(k4);
 
% Display the enhanced image and histogram.
imhist(k5);


