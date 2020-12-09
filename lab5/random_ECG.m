%random ECG signal

clear; close all; clc;
k = -6:15;
y = randn(size(k));
figure(); stem(k,y,'b','fill','LineWidth',1.2);
axis([-7 16 min(y)-1 max(y)+1]);
title('Random Sequence');