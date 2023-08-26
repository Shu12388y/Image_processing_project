clc
close all
a=imread('C:\Users\shubham\Downloads\photo-1542840843-3349799cded6.jpg');
figure(1) 
imshow(a)
b=rgb2gray(a);
figure(2)
imshow(b)
% p=imhist(b);
% figure(3)
p=imhist(b);



% histogram(b);
% [counts, edges] = histcounts(b);
% totalDataPoints = sum(counts);
% normalizedValues = counts / totalDataPoints;
% binCenters = (edges(1:end-1) + edges(2:end)) / 2;
% figure(3)
% bar(binCenters, normalizedValues);




% Load your grayscale image 'b' or create it if not loaded
% b = imread('your_image_filename.png');

% % Compute the histogram of the image
% pixelCounts = imhist(b);
% 
% % Total number of pixels in the image
% totalPixels = numel(b);
% 
% % Normalize the histogram
% normalizedHistogram = pixelCounts / totalPixels;
% 
% % Plot the normalized histogram
% bar(normalizedHistogram);
% title('Normalized Histogram');
% xlabel('Gray Level');
% ylabel('Normalized Frequency');
% 
% % Optional: You can also verify if the normalized histogram sums to approximately 1
% sumNormalizedHistogram = sum(normalizedHistogram);
% disp(['Sum of normalized histogram: ', num2str(sumNormalizedHistogram)]);

col=1;
row=256;

his=p/row*col;
bar(his)
title('Normalized Histogram');
xlabel('Gray Level');
ylabel('Normalized Frequency');



% % Values from histogram.
% min=45;
% max=180;
%  
% % Convert image into double.
% k2=double(b);
%  
% % Apply the formula.
% k3=(k2-min)./(max-min);
%  
% % Multiply with maximum possible value.
% k4=k3.*255;
%  
% % Convert the final result into uint8.
% k5=uint8(k4);
%  
% % Display the enhanced image and histogram.
% figure(4)
% imhist(k5);
% 
% 
