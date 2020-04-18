img1 = imread('images/sse1.bmp');
img2 = imread('images/sse2.bmp');
simg1=im2single(img1);
simg2=im2single(img2);

dgimg1 = double(rgb2gray(img1));
dgimg2 = double(rgb2gray(img2));

sgimg1 = single(rgb2gray(img1));
sgimg2 = single(rgb2gray(img2));

dimg1 = double(img1);
dimg2 = double(img2);

% Compute the SIFT key points as well as the descriptors using vl_sift
[f1,d1] = vl_sift(sgimg1); 
[f2,d2] = vl_sift(sgimg2);

f1(1:2,:) = uint16(f1(1:2,:));
f2(1:2,:) = uint16(f2(1:2,:));


[matches, scores] = vl_ubcmatch(d1,d2) ;
numMatches = size(matches,2) 


point1 = f1(1:2,matches(1,:)) ; 
X1=point1;
X1(3,:)=1;
point2 = f2(1:2,matches(2,:)) ;
X2=point2;
X2(3,:) = 1 ;

t = 0.005;  % Distance threshold for deciding outliers
[H, inliers] = ransacfithomography(X1, X2, t);

% --------------------------------------------------------------------
%                                                         Show matches
% --------------------------------------------------------------------

dh1 = max(size(simg2,1)-size(simg1,1),0) ;
dh2 = max(size(simg1,1)-size(simg2,1),0) ;

figure(1) ; clf ;

imagesc([padarray(simg1,dh1,'post') padarray(simg2,dh2,'post')]) ;
o = size(simg1,2) ;
line([f1(1,matches(1,:));f2(1,matches(2,:))+o], ...
     [f1(2,matches(1,:));f2(2,matches(2,:))]) ;
title(sprintf('%d tentative matches', numMatches)) ;
axis image off ;



% --------------------------------------------------------------------
%                                                        Stitch images
% --------------------------------------------------------------------

stitched_img=stitch_images(H,dimg1,dimg2);


figure(2);
imshow(stitched_img);
title('result');
