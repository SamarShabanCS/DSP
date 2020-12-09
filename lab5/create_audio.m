
%% Creation of audio file 
clc;close all;clear;

fs=44100;
time=2;
recObj1 = audiorecorder(fs,16,1); %define object of recorder
disp ('Start speaking.')
recordblocking(recObj1, time);  %stop program to record
disp('End of Recording.');
x = getaudiodata(recObj1);      %to cach the recorded data
audiowrite('test.wav', x, fs); %to store recorded data named as test.wav
% to listen: two ways
play(recObj1)
sound(x,fs)

%% read signal
clc;close all;clear;
[x,fs]=audioread('test.wav');
%sound(3*x,fs);  %increase or decrease volume
sound(5*x,0.7*fs); % speed signal using fs, try 1.5,0.7

%% plotting the Original audio signal

N=fs*time;
t=linspace(0,time,N);
plot(t,x)
xlabel('Time (s)')
ylabel('Amplitude')
title('Original Signal')
axis tight
grid on
%% speed audio without change pitch
speed_factor=1.5;    %try 0.75,1.5
y = stretchAudio(x,speed_factor);        
sound(y,fs);
t = (0:size(y,1)-1)/fs;
plot(t,y)
xlabel('Time (s)')
ylabel('Amplitude')
title('Modified Signal, Speedup Factor = 2')
axis tight
grid on

%% play audio file
player = audioplayer(y,fs);
play(player); % comment this out it will play.
stop(player); % comment this out it will stop.
