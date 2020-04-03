level=12;
initial_sigma = 2
img=imread("img/test.png");
gray_img=rgb2gray(img);

%normalize
[scale_space,sigma]=create_scale_space(gray_img,initial_sigma,level);
imshow(scale_space(:,:,6));


