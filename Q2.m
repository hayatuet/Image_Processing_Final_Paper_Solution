% Question 2:
% Part a:
% Name: Sonia Ramzan,
% so we need to create an image containing S R

clc; clear; close all;

width = 10;

img = zeros(500, 500);
img (150:150+width, 80:180) = 1;
img (150:240, 80:80+width) = 1;
img (240:240+width, 80:180) = 1;
img (240:240+90, 180-width:180) = 1;
img (240+90:240+90+width, 80:180) = 1;

gap = 310-80;
img (150:240+90+width, 80+gap:80+gap+width) = 1;
img (150:150+width, 80+gap:180+gap) = 1;
img (150:240, 180-width+gap:180+gap) = 1;
img (240:240+width, 80+gap:180+gap) = 1;

img (240+width:240+30+width, 80+33+gap:80+33+gap+width) = 1;
img (240+30:240+30+width, 80+33+gap:80+60+gap+width) = 1;
img (240+30+width:240+60+width, 80+60+gap:80+60+gap+width) = 1;
img (240+60:240+60+width, 80+60+gap:80+90+gap+width) = 1;
img (240+60:240+90+width, 80+90+gap:180+gap) = 1;

figure();
imshow(img)
title('Image Created')

% Part b:
% resizing:

img_resized = img(1:2:end, :);
figure();
imshow(img_resized)
title('Resized Image')

% Part c:

% First of all, S R is written on paper, then alphabets are divided into a
% group of rectangles. Created a zero matrix of size 500x500, then the
% rectangles at a specific coordinate locations are assigned 1 to display
% as white. There are a lot rough work done on a paper to find values of
% coordinates for each rectangular white region.