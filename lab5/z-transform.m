
%% z-transform
clc; close all; clear;
x=[9 5 4 2 1];
b=0;
n=length(x);
y=sym('z');
for i=1:n
   b=b+x(i)*y^(1-i); 
end
disp(b)
