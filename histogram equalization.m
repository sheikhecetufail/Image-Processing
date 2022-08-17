image = imread('office_3.jpg');
subplot(2,2,1)

img_gray  = rgb2gray(image);
imshow(img_gray)
title('grayscale image')



img_hist_eq = histeq(img_gray);
%imhist(img_hist_eq)
%title('histogram of  grayscale image after histogram equalization')



subplot(2,2,2)
imhist(img_gray)
title('histogram of grayscale image')

subplot(2,2,3)
img_hist_eq = histeq(img_gray);
imhist(img_hist_eq)
title('histogram of  grayscale image after histogram equalization')

subplot(2,2,4)
imshow(img_hist_eq)
title(' image after histogram equalization')




