clc;clear all;close all;


data=[[-2,0];[0,0.9];[2,2.0];[3, 6.5]; [4, 2.9]; [5, 8.8]; [6, 3.95]; [8, 5.03]; [10, 5.97]; [12, 7.1]; [13, 1.2]; [14, 8.2];
[16, 8.5];[18, 10.1]];
data=data';
iter = 100; 

 %%% 绘制数据点
 figure;plot(data(1,:),data(2,:),'o');hold on; % 显示数据点
 number = size(data,2); % 总点数
 bestParameter1=0; bestParameter2=0; % 最佳匹配的参数
 sigma = 1;
 pretotal=0;     %符合拟合模型的数据的个数

 for i=1:iter
 %%% 随机选择两个点
     idx = randperm(number,2); 
     sample = data(:,idx); 

     %%%拟合直线方程 y=kx+b
     line = zeros(1,3);
     x = sample(:, 1);
     y = sample(:, 2);

     k=(y(1)-y(2))/(x(1)-x(2));      %直线斜率
     b = y(1) - k*x(1);
     line = [k -1 b]

     mask=abs(line*[data; ones(1,size(data,2))]);    %求每个数据到拟合直线的距离
     total=sum(mask<sigma);              %计算数据距离直线小于一定阈值的数据的个数

     if total>pretotal            %找到符合拟合直线数据最多的拟合直线
         pretotal=total;
         bestline=line;          %找到最好的拟合直线
    end  
 end
 %显示符合最佳拟合的数据
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

 %%% 绘制最佳匹配曲线
 bestParameter1 = -bestline(1)/bestline(2);
 bestParameter2 = -bestline(3)/bestline(2);
 xAxis = min(inliers(1,:)):max(inliers(1,:));
 yAxis = bestParameter1*xAxis + bestParameter2;
 plot(xAxis,yAxis,'r-','LineWidth',2);
 title(['bestLine:  y =  ',num2str(bestParameter1),'x + ',num2str(bestParameter2)]);