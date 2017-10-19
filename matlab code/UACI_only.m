clc;
clear all;

x=imread('encypted_deblur1.jpg');
y=imread('encypted_deblur2.jpg');
[row,col]=size(x);
count=zeros(row,col);
for i=1:1:row
    for j=1:1:col
       if(x(i,j)>y(i,j))
       count(i,j)=(x(i,j)-y(i,j));
       else
       count(i,j)=(y(i,j)-x(i,j));
       end
    end
end

count=count/255;
countt=0;
for i=1:1:row
    for j=1:1:col
     countt=countt+count(i,j);
    end
end

uaci=(countt/(row*col))*100
