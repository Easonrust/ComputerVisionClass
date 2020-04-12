function [scale_space,sigma] = create_scale_space(gray_img,initial_sigma,level)
[h,w]=size(gray_img);
scale_space=zeros(h,w,level);
scale_space=im2double(scale_space);
sigma=zeros(1,level);
sigma(1)=initial_sigma;
for i=1:level
    if i>1
        sigma(i) = sigma(i - 1) * 1.2509;
    end
    hsize=floor(6*sigma(i)+1);
    h = sigma(i)*sigma(i)*fspecial('log', hsize, sigma(i));
    convolved_image=imfilter(gray_img,h,'replicate');
    
    scale_space(:,:,i)=convolved_image;
    size(convolved_image);
    imshow(convolved_image);
  
end
    
end

%hsize需要确定


