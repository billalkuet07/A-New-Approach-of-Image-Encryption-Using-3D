clc;
clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%NPCR%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x=imread('encypted_peppers1.jpg');
y=imread('encypted_peppers2.jpg');
[row,col]=size(x);
count=0;
for i=1:1:row
    for j=1:1:col
        if(x(i,j)==y(i,j))
            count=count+0;
        else
            count=count+1;
        end
    end
end

npcr=(count/(row*col))*100



