close all
clear
image = imread('yellowlily.jpg');
img = rgb2gray(image);

subplot(2,3,1)
imshow(img),title('original image');

img_log = im2double(img);

subplot(2,3,2)
c = 2;
img_log = c*log(1+img_log);
imshow(img_log),title(['Log Transformation by c =  ',num2str(c)]);

subplot(2,3,3)
c = 3;
img_log = c*log(1+img_log);
imshow(img_log),title(['Log Transformation by c = ',num2str(c)]);

subplot(2,3,4)
c = 0.5;
img_log = c*log(1+img_log);
imshow(img_log),title(['Log Transformation by c = ',num2str(c)]);

subplot(2,3,5)
c = 3;
img_log = img_log.^c;
imshow(img_log),title(['Power Law Transformation by \gamma = ',num2str(c)]);

subplot(2,3,6)
c = 0.5;
img_log = img_log.^c;
imshow(img_log),title(['Power law Transformation by \gamma=',num2str(c)]);