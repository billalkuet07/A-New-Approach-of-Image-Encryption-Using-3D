clc;
clear all;


a=imread('Decrypted_lena.jpg');
b=imread('Decrypted_deblur.jpg');
c=imread('Decrypted_mandrill.jpg');
d=imread('Decrypted_peppers.jpg');

w=imread('encypted_lena.jpg');
x=imread('encypted_deblur.jpg');
y=imread('encypted_mandrill.jpg');
z=imread('encypted_peppers.jpg');


figure
subplot(3,2,1)
imhist(a);
title('Histogram of lena image');
xlabel('(a)')

subplot(3,2,2)
imhist(w);
title('Histogram of encrypted lena image');
xlabel('(b)')

subplot(3,2,3)
imhist(b);
title('Histogram of deblur image');
xlabel('(c)')

subplot(3,2,4)
imhist(x);
title('Histogram of encrypted deblur image');
xlabel('(d)')

subplot(3,2,5)
imhist(c);
title('Histogram of mandrill image');
xlabel('(e)')

subplot(3,2,6)
imhist(y);
title('Histogram of encrypted mandrill image');
xlabel('(f)')

% 
% figure
% imhist(c);
% title('Histogram of mandrill image');
% figure
% imhist(y);
% title('Histogram of encrypted mandrill image');
% 
% figure
% imhist(d);
% title('Histogram of peppers image');
% figure
% imhist(z);
% title('Histogram of encrypted peppers image');




