%% Part a:
% Firt Name: Sonia
% Falls in third category

% Required: Count the number of skyblue and green objects, and also to
% calculate total area covered skyblue and green objects.


img = imread('img.png');

% for skyblue RGB color code is (0,162,232) 
R = 0; G = 162; B = 232;

% tolerance
tol = 80;

red = (img(:,:,1) < (R+tol)) & (img(:,:,1) > (R-tol));
green = (img(:,:,2) < (G+tol)) & (img(:,:,2) > (G-tol));
blue = (img(:,:,3) < (B+tol)) & (img(:,:,3) > (B-tol));

skyblue = (red & green & blue);
disp(['Number of skyblue object = ', ...
    num2str(max(max(bwlabel(skyblue))))]);
disp(['Total area covered by skyblue objects = ', ...
    num2str(sum(sum(skyblue)))]);

% now for green
% for skyblue RGB color code is (0,255,0) 
R = 0; G = 255; B = 0;

% tolerance
tol = 80;

red = (img(:,:,1) < (R+tol)) & (img(:,:,1) > (R-tol));
green = (img(:,:,2) < (G+tol)) & (img(:,:,2) > (G-tol));
blue = (img(:,:,3) < (B+tol)) & (img(:,:,3) > (B-tol));

greenObj = (red & green & blue);
disp(['Number of green object = ', ...
    num2str(max(max(bwlabel(greenObj))))]);
disp(['Total area covered by green objects = ', ...
    num2str(sum(sum(greenObj)))]);

%% Part b:
% We googled RGB codes for skyblue and green color.
% Then tolerance is set and kept on observing the result.
% The tolerance value of 80 gave correct result.