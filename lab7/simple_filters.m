%% lab7
%% p1 impulse response and frequency response
clc; clear; close all;
a=1;
b=0.25*[1 1 1 1];
figure;impz(b,a)
figure;freqz(b,a)
%% p2 impulse response and absolute frequency response for fir 
clc; clear; close all;
a=1;
b=0.25*[1 1 1 1];
figure;impz(b,a,10)
fs=8000;
f=(0:0.001:1)*(fs/2);
H=freqz(b,a,f,fs);
figure;plot(f,abs(H));
xlabel('physical frequency f (HZ)');
ylabel('frequency response |H|');
%% p3  impulse response and absolute frequency response for hpf
clc; clear; close all;
a=1;
b=0.25*[1 -1 1 -1];
figure;impz(b,a)
fs=8000;
f=(0:0.001:1)*(fs/2);
H=freqz(b,a,f,fs);
figure;plot(f,abs(H));
xlabel('physical frequency f (HZ)');
ylabel('frequency response |H|');
%% p4 impulse response and absolute frequency response for lpf using fir1 n=5
clc; clear; close all;
n=5;
fc=3000;
a=1;
fs=8000;
b=fir1(n,fc/(fs/2),'low');
figure;impz(b,a,5)
f=(0:0.001:1)*(fs/2);
H=freqz(b,a,f,fs);
figure;plot(f,abs(H));
xlabel('physical frequency f (HZ)');
ylabel('frequency response |H|');
disp(b)
isstable(b,a)
%% p5 p4 impulse response and absolute frequency response for lpf using fir1 n=25
clc; clear; close all;
n=25;
fc=3000;
a=1;
fs=8000;
b=fir1(n,fc/(fs/2),'low');
figure;impz(b,a,25)
f=(0:0.001:1)*(fs/2);
H=freqz(b,a,f,fs);
figure;plot(f,abs(H));
xlabel('physical frequency f (HZ)');
ylabel('frequency response |H|');
disp(b)
%% p6 impulse response and absolute frequency response for iir
clc; clear; close all;
a=[1 0.9];
b=1;
figure;impz(b,a,10)
fs=8000;
f=(0:0.001:1)*(fs/2);
H=freqz(b,a,f,fs);
figure;plot(f,abs(H));
xlabel('physical frequency f (HZ)');
ylabel('frequency response |H|');
isstable(b,a)
%% p6 impulse response and absolute frequency response for iir using butter
clc; clear; close all;
n=5;
fc=3000;
fs=8000;
[b,a]=butter(n,[1500 3000]/(fs/2),'bandpass');
figure;impz(b,a,20)

f=(0:0.001:1)*(fs/2);
H=freqz(b,a,f,fs);
figure;plot(f,abs(H));
xlabel('physical frequency f (HZ)');
ylabel('frequency response |H|');
disp(b)
isstable(b,a)