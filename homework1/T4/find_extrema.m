function blob_location = find_extrema(scale_space,sigma)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
index=[-1 1 0;-1 0 0;-1 -1 0;0 1 0;0 -1 0;1 1 0;1 0 0;1 -1 0;...
    -1 1 -1;-1 0 -1;-1 -1 -1;0 1 -1;0 0 -1;0 -1 -1; 1 1 -1;1 0 -1;1 -1 -1;...
    -1 1 1;-1 0 1;-1 -1 1;0 1 1;0 0 1;0 -1 1;1 1 1;1 0 1;1 -1 1 ];
blob_location=[];
for i=2:(size(scale_space,1)-1)
    for j=2:(size(scale_space,2)-1)
        for k=2:(size(scale_space,3)-1)
            if scale_space(i,j,k)<0.08
                continue
            end
            firstRelation=0;
            for l=1:26
                x=i+index(l,1);
                y=j+index(l,2);
                z=k+index(l,3);
                [index(l,1) index(l,2) index(l,3)];
                scale_space(x,y,z);
                scale_space(i,j,k);
                if l==1
                    if scale_space(x,y,z)<scale_space(i,j,k)
                        firstRelation=1;
                    elseif scale_space(x,y,z)>scale_space(i,j,k)
                        firstRelation=-1;
                    else
                        firstRelation=0;
                    end
                else
                    if scale_space(x,y,z)<scale_space(i,j,k)
                        Relation=1;
                    elseif scale_space(x,y,z)>scale_space(i,j,k)
                        Relation=-1;
                    else
                        Relation=0;
                    end
                    if Relation~=firstRelation
                        firstRelation=0;
                    end
                end
                
                if firstRelation==0
                    break;
                end
                
            end
            if firstRelation~=0
                blob_location=[blob_location;i j sigma(k)]; 
            end
        end
    end
            
end
end

