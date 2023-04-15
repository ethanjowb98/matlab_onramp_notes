% Threshold an Image Using Logical Operators
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads an image, converts it to grayscale, and adjusts the contrast.
img = imread("IMG_001.jpg");
gs = im2gray(img);
gsAdj = imadjust(gs);
imshow(gsAdj)

% Task 1
percent = 50;
% thresh = ceil(max(gsAdj)*(percent/100));
thresh = 255/2;
BW = gsAdj > thresh;
imshow(BW);


% Task 2
imhist(gsAdj);


% Task 3
% thresh = 200/2;
BW = gsAdj > 200;
imshow(BW);

% Further Practice
I = imread("IMG_004.jpg");
I = im2gray(I);
percent = 70;
thresh = ceil(max(gsAdj)*(percent/100));
Imask = I > thresh;
imshow(Imask);

% Automate Threshold Selection
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads an image, converts it to grayscale, and adjusts the contrast.
img = imread("IMG_001.jpg");
gs = im2gray(img);
gsAdj = imadjust(gs);
imshow(gsAdj)

% Task 1
BW = imbinarize(gsAdj);
imshow(BW);


% Task 2
BWadapt = imbinarize(gsAdj,"adaptive");
imshowpair(gsAdj,BWadapt,"montage");
imshowpair(gsAdj,BW,"montage");


% Task 3
BWadapt = imbinarize(gsAdj,"adaptive","ForegroundPolarity","dark");
imshowpair(gsAdj,BWadapt,"montage");


% Further Practice
I5 = imread("IMG_005.jpg");
I5gw = im2gray(I5);
I5BWadapt = imbinarize(I5gw,"global");
imshowpair(I5gw,I5BWadapt,"montage");