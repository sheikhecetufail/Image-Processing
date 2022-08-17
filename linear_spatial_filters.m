close all
clear
image = imread('cameraman.tif');
img = im2double(image) ; %rgb2gray(image);

% Linear spatial Filters_____________________________________________
[r,c] = size(img);
img_g = img + randn(r,c)*0.05; % guassian noise added

box_filter = [1 1 1;1 1 1; 1 1 1]/9;  % b_f = fspecial('average',3)
img_fil = imfilter(img_g,box_filter);
subplot(2,3,1)
imshow(img_g);title('original Image with guassian noise')
subplot(2,3,2)
imshow(img_fil);title('Filtered Image with averaging (box) filter')


weighted_filter = [1 2 1;2 4 2; 1 2 1]/16;
img_fil = imfilter(img_g,weighted_filter);
subplot(2,3,3)
imshow(img_fil);title('Filtered Image with weighted averaging  filter')

% Median Filter_________________________________________________
img_s = imnoise(img,'salt & pepper',0.1);
subplot(2,3,4)
imshow(img_s);title('original Image with salt & pepper noise')
img_fil = imfilter(img_s,weighted_filter);
subplot(2,3,5)
imshow(img_fil);
title({'Filtered Image ( from salt and pepper noise )', 'with weighted averaging  filter'})

img_f = medfilt2(img_s);
subplot(2,3,6);
imshow(img_f);title({'Filtered Image ( from salt and pepper noise )',' with median  filter'})
