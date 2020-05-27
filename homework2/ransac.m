clc;clear all;close all;


data=[[-2,0];[0,0.9];[2,2.0];[3, 6.5]; [4, 2.9]; [5, 8.8]; [6, 3.95]; [8, 5.03]; [10, 5.97]; [12, 7.1]; [13, 1.2]; [14, 8.2];
[16, 8.5];[18, 10.1]];
data=data';
N = 100; 

 % plot the data
 figure;plot(data(1,:),data(2,:),'o');hold on;
 number = size(data,2); % 
 T = 1;
 
 pretotal=0;     

 for i=1:N
 %%% ���ѡ��������
     idx = randperm(number,2); 
     sample = data(:,idx); 

     %%%���ֱ�߷��� y=kx+b
     line = zeros(1,3);
     x = sample(:, 1);
     y = sample(:, 2);

     k=(y(1)-y(2))/(x(1)-x(2));      %ֱ��б��
     b = y(1) - k*x(1);
     line = [k -1 b]

     mask=abs(line*[data; ones(1,size(data,2))]);    %��ÿ�����ݵ����ֱ�ߵľ���
     total=sum(mask<T);              %�������ݾ���ֱ��С��һ����ֵ�����ݵĸ���

     if total>pretotal            %�ҵ��������ֱ�������������ֱ��
         pretotal=total;
         bestline=line;          %�ҵ���õ����ֱ��
    end  
 end
 %��ʾ��õ����ֱ�ߵ�һ�¼�
mask=abs(bestline*[data; ones(1,size(data,2))])<T;    
hold on;
k=1;
for i=1:length(mask)
    if mask(i)
        inliers(:,k) = data(:,i);
        k=k+1;
    end
end
b=ones(1,11);
A=[inliers(1,:);b];
A=A';
B=inliers(2,:);
B=B';
kb=pinv(A'*A)*A'*B

 
xAxis = min(inliers(1,:)):max(inliers(1,:));
yAxis = kb(1)*xAxis + kb(2);
plot(xAxis,yAxis,'r-','LineWidth',2);
 