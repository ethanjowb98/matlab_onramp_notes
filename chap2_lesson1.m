I = imread("IMG_001.jpg");
imshow(I);
I2 = imread("IMG_002.jpg");
imshow(I2);
imshowpair(I,I2,"montage");
imwrite(I,"myImage.png");
Inew = imread("myImage.png");
imshow(Inew);