clc;clear all;close all;


data=[[-2,0];[0,0.9];[2,2.0];[3, 6.5]; [4, 2.9]; [5, 8.8]; [6, 3.95]; [8, 5.03]; [10, 5.97]; [12, 7.1]; [13, 1.2]; [14, 8.2];
[16, 8.5];[18, 10.1]];
data=data';
iter = 100; 

 %%% �������ݵ�
 figure;plot(data(1,:),data(2,:),'o');hold on; % ��ʾ���ݵ�
 number = size(data,2); % �ܵ���
 bestParameter1=0; bestParameter2=0; % ���ƥ��Ĳ���
 sigma = 1;
 pretotal=0;     %�������ģ�͵����ݵĸ���

 for i=1:iter
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
     total=sum(mask<sigma);              %�������ݾ���ֱ��С��һ����ֵ�����ݵĸ���

     if total>pretotal            %�ҵ��������ֱ�������������ֱ��
         pretotal=total;
         bestline=line;          %�ҵ���õ����ֱ��
    end  
 end
 %��ʾ���������ϵ�����
mask=abs(bestline*[data; ones(1,size(data,2))])<sigma;    
hold on;
k=1;
for i=1:length(mask)
    if mask(i)
        inliers(1,k) = data(1,i);
        k=k+1;
        plot(data(1,i),data(2,i),'+');
    end
end

 %%% �������ƥ������
 bestParameter1 = -bestline(1)/bestline(2);
 bestParameter2 = -bestline(3)/bestline(2);
 xAxis = min(inliers(1,:)):max(inliers(1,:));
 yAxis = bestParameter1*xAxis + bestParameter2;
 plot(xAxis,yAxis,'r-','LineWidth',2);
 title(['bestLine:  y =  ',num2str(bestParameter1),'x + ',num2str(bestParameter2)]);