close all
clear
img = imread('office_1.jpg');
img = rgb2gray(img);
%I = imadd(img, 100 );
I = img;
% arguments in below function:
% stretchlim gives the bottom 1% and the top 1% of all pixel values
% [0.1;0.95] gives the mapping that bottom 1% will be saturated to  0.1 and
% top 1% to 0.99
img_c = imadjust(I, stretchlim(I),[0.1,0.9]);
subplot(2,2,1)
imshow(img);title('low contrast Image');

subplot(2,2,2)
imhist(img);title('Histogram of low contrast Image');

subplot(2,2,3)
imshow(img_c);title('High contrast Image');
subplot(2,2,4)

imhist(img_c);title('Histogram stretched')
