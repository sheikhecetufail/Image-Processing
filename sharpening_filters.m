close all
clear
image = imread('cameraman.tif');
img = im2double(image);
subplot(2,3,1)
imshow(img);title('Original image');

lap_filter = [0 1 0;1 -4 1;0 1 0];
img_fil = imfilter(img,lap_filter);
subplot(2,3,2)
imshow(img_fil);title('Laplacian filtered image');

subplot(2,3,3)
imshow(img + img_fil);title('Original + Laplacian filtered image');
% Adding guassian noise
[r,c] = size(img);
img_g = img + randn(r,c)*0.04; % guassian noise added
img_fil = imfilter(img_g,lap_filter);
subplot(2,3,4)
imshow(img_g);title('Original Image with Gaussian noise')

subplot(2,3,5)
imshow(img_fil);title({'Laplacian filtered image',' with Gaussian Noise '});

% LOG Filtering 
filt = fspecial('gaussian');
img_f = imfilter(img_g,filt);
img_fil = imfilter(img_f,lap_filter);
subplot(2,3,6)
imshow(img_fil);title('Laplacian of Gaussian filtered image');
