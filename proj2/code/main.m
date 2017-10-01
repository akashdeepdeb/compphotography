%{
The following code has been written by Akashdeep Deb (deb2)
Each part has been modularized and can be run by pressing Ctrl+Enter while 
in each part. 

1. Randomly Sampled Texture (10 pts)
2. Overlapping Patches (30 pts)
3. Seam Finding (20 pts)
4. Texture Transfer (30 pts)
5. Quality of results (10 pts) 
%}

%% 1. Randomly Sampled Texture (10 pts)
% read image into imsample and call quilt_random function
im2sample = im2single(imread('./../samples/bricks_small.jpg'));
imrandom = quilt_random(im2sample, 400, 50);
figure;
imshow(imrandom);

%% 2. Overlapping Patches (30 pts)
% read image in imsample and call quilt_simple function
% use only odd positive integers for patchsize for now
im2sample = im2single(imread('./../samples/bricks_small.jpg'));
imoverlap = quilt_simple(im2sample, 400, 49, 4, 0.01);
figure;
imshow(imoverlap);

%% 3. Seam finding (20 pts)
% use cut.m to find a cut in the image and combine both images  
% use this method to combine two overlapping images
im2sample = im2single(imread('./../samples/brick_small.jpg'));
imoverlap = quilt_cut(im2sample, 400, 49, 4, 0.01);
figure;
imshow(imoverlap);

%% 4. Texture Transfer (30 pts)
% use quilt_cut.m and the texture_transfer algorithm 
