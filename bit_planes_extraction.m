clear 
close all

image = imread('yellowlily.jpg');
img = rgb2gray(image);

subplot(3,3,1)
imshow(img),title('original image');

subplot(3,3,2)
b = bitget(img,8);imshow(logical(b)),title('8-th Bit plane image ');


subplot(3,3,3)
b = bitget(img,7);imshow(logical(b)),title('7-th Bit plane image ');

subplot(3,3,4)
b = bitget(img,6);imshow(logical(b)),title('6-th Bit plane image ');

subplot(3,3,5)
b = bitget(img,5);imshow(logical(b)),title('5-th Bit plane image ');

subplot(3,3,6)
b = bitget(img,4);imshow(logical(b)),title('4-th Bit plane image ');

subplot(3,3,7)
b = bitget(img,3);imshow(logical(b)),title('3-rd Bit plane image ');

subplot(3,3,8)
b = bitget(img,2);imshow(logical(b)),title('2-nd Bit plane image ');

subplot(3,3,9)
b = bitget(img,1);imshow(logical(b)),title('1st Bit plane image ');