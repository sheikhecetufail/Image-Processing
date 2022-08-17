image = imread('yellowlily.jpg');
subplot(2,2,1)
imshow(image)
title('Actual RGB image')

subplot(2,2,2)
img_gray  = rgb2gray(image);
imshow(img_gray)
title('grayscale image')

subplot(2,2,3)
[img_ind,Map] = gray2ind(img_gray,25);
imshow(img_ind)
title('Indexed image')

subplot(2,2,4)
img_rgbind = ind2gray(img_ind,Map);
imshow(img_rgbind);title('Gray image from Indexed image')

