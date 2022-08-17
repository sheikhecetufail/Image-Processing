close all
clear
img = imread('yellowlily.jpg');
img = rgb2gray(img);
subplot(2,3,1)
imshow(img);title('original Image');
% Adding intensities to pixels
n = 50;
img_a = imadd(img,n);
subplot(2,3,2)
imshow(img_a);title(['Adding an image by ',num2str(n)]);

% Subtracting intensities to pixels
n = 50;
img_s = imsubtract(img,n);
subplot(2,3,3)
imshow(img_s);title(['Subracting an image by ',num2str(n)]);

% Multiplying 
n = 0.5; % Darkens the image
img_a = immultiply(img,n);
subplot(2,3,4)
imshow(img_a);title(['Multiply an image by ',num2str(n)]);

% Dividing 
n = 0.3; % Brightens the image
img_a = imdivide(img,n);
subplot(2,3,5)
imshow(img_a);title(['Diving an image by ',num2str(n)]);

% Negative of an image
img_a = 255 - img; % or imcomplement(img)
subplot(2,3,6)
imshow(img_a);title('Negative of an image');