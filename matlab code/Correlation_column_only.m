clc;
clear all;
original=imread('encypted_lena.jpg');
% rgb=rgb2gray(original);
 rgb=original;
[row,col]=size(rgb);
total_length=row*col;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%VERTICAL CORRELATION%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%for ttotal image
% x=zeros(1,(row*col)/2);
% y=zeros(1,(row*col)/2);

%%%% for 1000 pair %%%
 x=zeros(1,(256*40));
 y=zeros(1,(256*40));
 %%%%%%%%%%%%%%%%%%%
k=0;
l=0;
% for j=1:1:col
for j=1:1:80
    for i=1:1:row      
        if(mod(j,2)==0)
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
% title('Vertical corralation of peppers image');
 R = corrcoef(x,y)

