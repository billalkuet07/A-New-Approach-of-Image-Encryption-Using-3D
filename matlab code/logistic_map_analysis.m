clc;
clear all;
%3D chaotic map for image encryption
%3.53<l<3.81
%0<b<0.022
%0<a<0.015
%      x(i+1)=l*x(i)*(1-x(i))+b*y(i)*y(i)*x(i)+a*z(i)*z(i)*z(i);
%      y(i+1)=l*y(i)*(1-y(i))+b*z(i)*z(i)*y(i)+a*x(i)*x(i)*x(i);
%      z(i+1)=l*z(i)*(1-z(i))+b*x(i)*x(i)*z(i)+a*y(i)*y(i);
%modify the chaos by this equation furthure
%z(i+1)=l*z(i)*(1-z(i))+b*x(i)*x(i)*z(i)+a*y(i)*y(i)*y(i);
%initial conditions
 x(1)=0.2350;
 y(1)=0.3500;
 z(1)=0.7350;
 a(1)=0.0125;
 b(1)=0.0157;
 l(1)=3.7700;
 
 for i=1:1:1000
     x(i+1)=l*x(i)*(1-x(i))+b*y(i)*y(i)*x(i)+a*z(i)*z(i)*z(i);
     y(i+1)=l*y(i)*(1-y(i))+b*z(i)*z(i)*y(i)+a*x(i)*x(i)*x(i);
     z(i+1)=l*z(i)*(1-z(i))+b*x(i)*x(i)*z(i)+a*y(i)*y(i)*y(i);
 end
 i=1:1:1001;
 subplot(3,1,1)
 plot(i,x)
 title('Plot of X');
 xlabel('Number of iteration');
 ylabel('value of X');
 
 subplot(3,1,2)
 plot(i,y)
 title('Plot of Y');
 xlabel('Number of iteration');
 ylabel('value of Y');
 
 subplot(3,1,3)
 plot(i,z)
 title('Plot of Z');
 xlabel('Number of iteration');
 ylabel('value of Z');
 
 figure
 
 subplot(3,1,1)
 hist(x)
 title('Histogram of X');
 ylabel('Frequency');
 xlabel('value of X');
 
 subplot(3,1,2)
 hist(y)
 title('Histogram of Y');
 ylabel('Frequency');
 xlabel('value of Y');
 
 subplot(3,1,3)
 hist(z)
 title('Histogram of Z');
 ylabel('Frequency');
 xlabel('value of Z');
 
 %histogram equalization and preparation for use
 x=ceil(mod((x*100000),512));
 y=ceil(mod((y*100000),512));
 z=ceil(mod((z*100000),512));
 figure
 subplot(3,1,1)
 hist(x)
 title('Histogram equaliztion of X');
 ylabel('Frequency');
 xlabel('value of X');
 
 subplot(3,1,2)
 hist(y)
 title('Histogram equaliztion of Y');
 ylabel('Frequency');
 xlabel('value of Y');
 
 subplot(3,1,3)
 hist(z)
 title('Histogram equaliztion of Z');
 ylabel('Frequency');
 xlabel('value of Z');
 