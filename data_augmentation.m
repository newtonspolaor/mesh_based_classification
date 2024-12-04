function [img_r90,img_r180,img_s150_50,img_s80_120]=data_augmentation(img)
%Function that applies rotation and resizing procedures on each dermoscopy examination received as input to return four other images, as described in the manuscript associated with this repository
%Requires: an image img pre-processed as described in the manuscript
%Ensures: four images that represent variations from the input image according to a specific rotation and/or resize procedure

%Please refer to the Matlab documentation to verify requirements and more information on the built-in functions imrotate and imresize
img_r90 = imrotate(img,-90,'bilinear','loose');
img_r180 = imrotate(img,-180,'bilinear','loose');
img_s150_50 = imresize(img,[1.50*size(img,1) 0.50*size(img,2)]);
img_s80_120 = imresize(img,[0.80*size(img,1) 1.20*size(img,2)]);
