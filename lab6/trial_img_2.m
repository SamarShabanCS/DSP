clc; clear;
%read image and show
I= imread('art1.jpg');
imshow(I)

%extract some layers and save image
y=I;
y(:,:,[1 2])=0;
imshow(y);
imwrite(y,'art_gb.jpg');

%grayscale
clear y;
figure(1)
y=I(:,:,[1 1 1]);       %y=I(:,:,1); or y=I(:,:,2); or y=I(:,:,3);
imshow(y);

%concatenate
clear y;
y=[I I];        %y=[I ;I];
imshow(y);

%rotate
clear y;
y(:,:,1)=I(:,:,1)'; 
y(:,:,2)=I(:,:,2)'; 
y(:,:,3)=I(:,:,3)'; 
imshow(y);

%contrast
clear y;
y=I+150;
imshow(y);

%part of image
clear y;
y=I(1:end/4,1:end/4,:);
imshow(y);

%construct egypt flage
a=255*ones(100,100);
b=zeros(100,100);
misr(:,:,1)=[b b b;a a a;b b b];
misr(:,:,2)=[b b b;a a a;b b b];
misr(:,:,3)=[a a a;a a a;b b b];
image(misr);

