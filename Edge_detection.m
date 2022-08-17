close all
clear
image = imread('cameraman.tif');
img = im2double(image);

subplot(2,3,1)
imshow(img);title('original Image')
subplot(2,3,2)
img_f = edge(img,'Prewitt');
imshow(img_f);title('Edge Detection using Prewitt')
subplot(2,3,3)
img_f = edge(img,'Roberts');
imshow(img_f);title('Edge Detection using Roberts')
subplot(2,3,4)
img_f = edge(img,'Canny');
imshow(img_f);title('Edge Detection using Canny')
subplot(2,3,5)
img_f = edge(img,'Sobel');
imshow(img_f);title('Edge Detection using Sobel')
subplot(2,3,6)
img_f = edge(img,'log');
imshow(img_f);title('Edge Detection using Laplacian of Guassian')