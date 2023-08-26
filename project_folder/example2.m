% Load the image
I = imread('C:\Users\shubham\Downloads\photo-1542840843-3349799cded6.jpg');

% Convert the image to grayscale
grayI = rgb2gray(I);

% Calculate the histogram
[counts, x] = imhist(grayI, 16);

% Display the histogram
stem(x, counts)
title('Histogram')

% Calculate the Otsu's threshold
T = otsuthresh(counts);

% Binarize the image
BW = imbinarize(grayI, T);

% Display the binarized image
figure
imshow(I)
figure
imshow(grayI)
figure
imshow(BW)
title('Binarized Image')
