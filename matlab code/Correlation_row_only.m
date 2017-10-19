clc;
clear all;
original=imread('peppers.jpg');
rgb=rgb2gray(original);
% rgb=original;
[row,col]=size(rgb);
total_length=row*col;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%HORIZONTAL CORRELATION%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=zeros(1,(row*col)/2);
y=zeros(1,(row*col)/2);
k=0;
l=0;
for i=1:1:row
    for j=1:1:col
        if(mod(i,2)==0)
            k=k+1;
            x(1,k)=rgb(i,j);
        else
            l=l+1;
            y(1,l)=rgb(i,j);
        end
    end
end
% figure
% scatter(x,y,2)
% title('Horizontal corralation of peppers image');

 R = corrcoef(x,y)

