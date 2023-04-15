I = imread("IMG_002.jpg");
imshow(I);
gs = im2gray(I);
imshow(gs);
sz = size(gs);

I = imread("IMG_001.jpg");
I2 = imread("IMG_002.jpg");
gs = im2gray(I);
gs2 = im2gray(I2);
imshowpair(gs,gs2,"montage");

imhist(gs);
imhist(gs2);
gs2Adj = imadjust(gs2);
imshowpair(gs2,gs2Adj,"montage");

imhist(gs2Adj);

I2adj = imlocalbrighten(I2);
imshowpair(I2,I2adj,"montage");
