clc;
clear all;
 original=imread('encypted_peppers.jpg');
 %rgb=rgb2gray(original);
  rgb=original;
[row,col]=size(rgb);

total_length=row*col;
frequency=zeros(1,256);
row_matrix_image=reshape(rgb,1,total_length);
for i=1:1:total_length
    if(row_matrix_image(1,i)>0)
    frequency(1,row_matrix_image(1,i))=frequency(1,row_matrix_image(1,i))+1;
    else
    frequency(1,(row_matrix_image(1,i)+1))=frequency(1,(row_matrix_image(1,i)+1))+1; 
    end
end
for i=1:1:256
    probability(1,i)=frequency(1,i)/total_length;
    if(probability(1,i)~=0)
    probability_enhance(1,i)=((-1)*probability(1,i)*log2(probability(1,i)));
    else
        probability_enhance(1,i)=probability(1,i);
    end
end
entropy=0;
for i=1:1:256
    entropy=entropy+probability_enhance(i);
end
entropy
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
