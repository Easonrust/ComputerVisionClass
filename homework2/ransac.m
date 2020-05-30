clc;clear all;close all;


data=[[-2,0];[0,0.9];[2,2.0];[3, 6.5]; [4, 2.9]; [5, 8.8]; [6, 3.95]; [8, 5.03]; [10, 5.97]; [12, 7.1]; [13, 1.2]; [14, 8.2];
[16, 8.5];[18, 10.1]];
data=data';
N = 100; 

% Visualize the data
 figure;plot(data(1,:),data(2,:),'o');hold on;
 number = size(data,2); % 
 T = 1;
 
 pretotal=0;     

 for i=1:N
 % (1) Randomly select a sample of s data points from S and instantiate the model from this subset
     idx = randperm(number,2); 
     sample = data(:,idx); 

     line = zeros(1,3);
     x = sample(:, 1);
     y = sample(:, 2);

     k=(y(1)-y(2))/(x(1)-x(2));     
     b = y(1) - k*x(1);
     line = [k -1 b]

     % (2) Determine the set of data points Si which are within a distance threshold t of the model. 
     %The set Si is the consensus set of the sample and defines the inliers of S
     mask=abs(line*[data; ones(1,size(data,2))]);    
     total=sum(mask<T);              
     if total>pretotal            
         pretotal=total;
         bestline=line;          
    end  
 end

mask=abs(bestline*[data; ones(1,size(data,2))])<T;    
hold on;
k=1;
for i=1:length(mask)
    if mask(i)
        inliers(:,k) = data(:,i);
        k=k+1;
    end
end

% (3) re?estimated using all points in the subset Si
b=ones(1,11);
A=[inliers(1,:);b];
A=A';
B=inliers(2,:);
B=B';
kb=pinv(A'*A)*A'*B

 
xAxis = min(inliers(1,:)):max(inliers(1,:));
yAxis = kb(1)*xAxis + kb(2);
plot(xAxis,yAxis,'r-','LineWidth',2);

% result 0.4996 0.9711
 