close all; clear; clc;
%% complex signal consist of [10,50,90]frequencies
fs=1000;
time=2;
ts=1/fs;
N=fs*time;
t=0:ts:time-ts;  %discretize time
freqs=[10 50 90];
Amp=7;
x_complex=0;
for i=1:length(freqs)
    x(i,:)=Amp*sin(2*pi*freqs(i)*t);
    x_complex=x_complex+x(i,:);
end

%plotting signals
subplot(5,1,1)
plot(t,x(1,:));
title('signal with 10 frequency');

subplot(5,1,2)
plot(t,x(2,:));
title('signal with 50 frequency');

subplot(5,1,3)
plot(t,x(3,:));
title('signal with 90 frequency');

subplot(5,1,4)
plot(t,x_complex);
title('complex signal');

%apply FFT

f=linspace(0,fs,N);
fft_complex_1=fft(x_complex);
fft_complex_2=abs(fft_complex_1);

%plot fft of complex_signal
subplot(5,1,5)
plot(f,fft_complex_2);
title('fft of complex signal');
