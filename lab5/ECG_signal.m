%load ECG signal

clear; close all; clc;
load ecg_data.mat
t = 1:1000;
figure(1); plot(t,x,'r','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('ECG Signal');grid on;
