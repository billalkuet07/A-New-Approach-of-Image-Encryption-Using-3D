clc;
clear all;
w=imread('Decrypted_lena.jpg');
x=imread('Decrypted_deblur.jpg');
a=imread('Decrypted_mandrill.jpg');

y=imread('encypted_lena.jpg');
z=imread('encypted_deblur.jpg');
b=imread('encypted_mandrill.jpg');

figure
subplot(2,2,1)
imshow(w);
title('Lena Image')
xlabel('(a)')

subplot(2,2,2)
imshow(y);
title('Encrypted Lena Image')
xlabel('(b)')

subplot(2,2,3)
imshow(x);
title('Deblur Image')
xlabel('(c)')

subplot(2,2,4)
imshow(z);
title('Encrypted Deblur Image')
xlabel('(d)')
% 
% subplot(3,2,5)
% imshow(a);
% title('Mandrill Image')
% xlabel('(c)')
% 
% subplot(3,2,6)
% imshow(b);
% title('Enc. Mandrill Image')
% xlabel('(d)')



