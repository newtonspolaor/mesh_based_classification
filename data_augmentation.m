function [img_r90,img_r180,img_s150_50,img_s80_120]=data_augmentation(img)
%Function that applies rotation and resizing procedures on each dermoscopy examination to derive four other images, as described in the manuscript associated with this repository

img_r90 = imrotate(img,-90,'bilinear','loose');
img_r180 = imrotate(img,-180,'bilinear','loose');
img_s150_50 = imresize(img,[1.50*size(img,1) 0.50*size(img,2)]);
img_s80_120 = imresize(img,[0.80*size(img,1) 1.20*size(img,2)]);
