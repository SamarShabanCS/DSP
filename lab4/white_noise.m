%generate white noise signal
%x=A rand(1,N)*2-1

fs=8000;
time=2;
N=fs*time;
t=linspace(0,time,N);
A=0.1;
x=A*rand(1,N)*2-1;
sound(x,fs)

figure()
plot(t,x)
xlabel('Time');
ylabel('Amplitude');
title('white noise siganl')
%plot(t(1:100),x(1:100));grid;
xlim([0 0.01]), grid