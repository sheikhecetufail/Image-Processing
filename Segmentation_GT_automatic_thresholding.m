close all
clear 

img = imread('yellowlily.jpg');
img = rgb2gray(img);

subplot(131)
imhist(img),title('Histogram of original Image')
T = randi([1,255],1); % randomly generate a no between 1 and 255
[rows, cols] = size(img);
img_seg = zeros(rows,cols);
L = 0;
U = 0;
m = 0;
n = 0;
[rows, cols] = size(img);
z = 20;
sum1 = double(0);
sum2 = double(0);

% automatic calculation of global threshold
while z > 0

    for i = 1:rows
        for j= 1:cols
            if img(i,j)>T
                img_seg(i,j)= img(i,j);
                sum1 = U + double(img(i,j));
                U = sum1;
                m = m+1;
            else 
                sum2 = L + double(img(i,j));
                L = sum2;
                n = n+1;
            end
        end
    end
    T = ((sum1/m)+(sum2/n))/2
    z = z-1;
end
subplot(132)
imshow(img),title('Original Image')
subplot(133)
imshow(img_seg),title({'segmented image by  Global Thresholdng','using Automatic Thresholding'})