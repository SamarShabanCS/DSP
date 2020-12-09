%% echo effect using convolution
clear; close all; clc;
%to read specific voice note
[y,fs]=audioread('H:\samar partition\DSP\matlab_current folder\Q2.wav');
h=[1,zeros(1,0.4*fs),0.5,zeros(1,0.4*fs),0.25];
%h=[1,zeros(1,0.4*fs),0.5];
echo=conv(y,h);

figure;
subplot(3,1,1);
plot(y);
title('original signal');

subplot(3,1,2);
plot(h);
title('impulse response');

subplot(3,1,3);
plot(echo);
title('echo ');

sound(echo,fs)
