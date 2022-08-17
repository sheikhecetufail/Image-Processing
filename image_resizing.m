close all
clear
image = imread('yellowlily.jpg');
img = rgb2gray(image);
[r,c]=size(img);
figure()
subplot(2,2,1)
imshow(img);title(['image is : ',num2str(r),' x ',num2str(c)]);

subplot(2,2,2)
img_s = img(1:8:r,1:8:c);
imshow(img_s);title(['image is : ',num2str(r/8),' x ',num2str(c/8)]);
subplot(2,2,3)
img_s = img(1:16:r,1:16:c);
imshow(img_s);title(['image is : ',num2str(r/16),' x ',num2str(round(c/16))]);
subplot(2,2,4)
img_s = img(1:32:r,1:32:c);
imshow(img_s);title(['image is : ',num2str(r/32),' x ',num2str(round(c/32))]);      