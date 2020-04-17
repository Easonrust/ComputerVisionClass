level=12;
initial_sigma = 2
img=imread("img/test.png");
imDouble = im2double(img);
gray_img=rgb2gray(imDouble);
size(gray_img)
%normalize
[scale_space,sigma]=create_scale_space(gray_img,initial_sigma,level);
blob_location=find_extrema(scale_space,sigma);
size(blob_location);
figure;
imshow(img);
hold on;

alpha=0:pi/50:2*pi;%½Ç¶È[0,2*pi]
%R=2;%°ë¾¶
for i=1:size(blob_location,1)
    R=blob_location(i,3)
    y=R*cos(alpha)+blob_location(i,1);
    x=R*sin(alpha)+blob_location(i,2);
    plot(x,y,'r-','linewidth',2)
    axis equal
end



