# HR2
clc;

clear all;

close all;

ap=0.5;

as=50;

fp=1000;

fs=2000;

f=5000;

wp=2*fp/f;

ws=2*fs/f;

wn=[wp,ws];

%TO FIND THE CUT OFF FREQ&ORDER OF FILTER

[n,wn]=buttord(wp,ws,ap,as);

[b,a]=butter(n,wn,'high');

w=0:0.01:pi;

h=freqz(b,a,w);

p=angle(h);

mag=20*log10(abs(h));

subplot(2,1,1);

plot(w/pi,mag);

grid;

xlabel('normalized frequency');

ylabel('magnitude in db-->');

title('magnitude response(highpass filter)');

subplot(2,1,2);

plot(w/pi,p);

grid;

xlabel('normalized frequency-->');

ylabel('phase in radians-->');

title('phase response(highpass filter)');
