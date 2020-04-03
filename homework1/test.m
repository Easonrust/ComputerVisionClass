img=imread('img/test.png');
imshow(img);
pt=LoG_Blob(rgb2gray(img));
draw(img,pt,'LOG')