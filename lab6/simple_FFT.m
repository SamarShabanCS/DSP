close all; clear; clc;
%% simple fourier transform
fs=1000;
time=2;
t=0:1/fs:time;  %discretize time
x=sin(2*pi*20*t);
plot(t,x);

N=fs*time;
f=linspace(0,fs,N+1);  %discretize frequency %f=0:fs*time;
ff=abs(fft(x));        %calculate FFT
plot(f,ff);

