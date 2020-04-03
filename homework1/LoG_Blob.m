function [points]=LoG_Blob(img,num_blobs)
%功能：提取LoG斑点
%img??输入图像
%num??需要检测斑点数目
%point??检测出的斑点
img=double(img(:,:,1));
if nargin==1    %如果输入参数仅有一个（img）
    num=1000;    %则将检测斑点数设置为120
else
    num=num_blobs;
end
%设定LoG参数
sigma_begin=2;
sigma_end=15;
sigma_step=1;
sigma_array=sigma_begin:sigma_step:sigma_end;
sigma_nb=numel(sigma_array);
    %n = numel(A) returns the number of elements, n, in array A
    %equivalent to prod(size(A)).
img_height=size(img,1);
img_width=size(img,2);
%计算尺度规范化高斯拉普拉斯算子
snlo=zeros(img_height,img_width,sigma_nb);
for i=1:sigma_nb
    sigma=sigma_array(i);
    snlo(:,:,i)=sigma*sigma*imfilter(img,fspecial('log',...
        floor(6*sigma+1),sigma),'replicate');
end
%搜索局部极值
snlo_dil=imdilate(snlo,ones(3,3,3));
blob_candidate_index=find(snlo==snlo_dil);
blob_candidate_value=snlo(blob_candidate_index);
[temp,index]=sort(blob_candidate_value,'descend');
blob_index=blob_candidate_index(index(1:min(num,numel(index))));
[lig,col,sca]=ind2sub([img_height,img_width,sigma_nb],blob_index);
points=[lig,col,3*reshape(sigma_array(sca),[size(lig,1),1])];
end

