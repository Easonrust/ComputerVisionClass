function [scale_space,sigma] = create_scale_space(gray_img,initial_sigma,level)
[h,w]=size(gray_img);
scale_space=zeros(h,w,level);
scale_space=im2uint8(scale_space);
sigma=zeros(1,level);
sigma(1)=initial_sigma;
for i=1:level
    if i>1
        sigma(i) = sigma(i - 1) * sqrt(2)
    end
    hsize=round(6*sigma(i));
    if mod(hsize,2)==0
        hsize=hsize+1;
    end
    h = sigma(i)*sigma(i)*fspecial('log', [hsize hsize], sigma(i));
    convolved_image=imfilter(gray_img,h);
    
    scale_space(:,:,i)=convolved_image;
    size(convolved_image);
  
end
    
end

%hsize需要确定


