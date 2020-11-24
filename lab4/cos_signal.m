%generate sinosoidal signal
%x=A cos (2 pi fm t)
fs=8000;
time=1;
t=0:(1/fs):time;
fm=500;
A=0.9;
x=A*cos(2*pi*fm*t);
sound(x,fs)

figure()
plot(t,x)
xlabel('Time');
ylabel('Amplitude');
title('sinusoidal siganl')
%plot(t(1:100),x(1:100));grid;
xlim([0 0.01]), grid