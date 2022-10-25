%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% exercise_2.m
%
% Exercise 2 as part of Assignment 1 for EE445.
% Luke Canny 19339166 25/10/2022
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Declaring inital constants
poleFrequency = 3400;
poleRadius = 0.96;
fs = 16000;
n = 2048;

% Calculating theta (pole frequency is same as centre frequency)
theta = poleFrequency*(2*pi)/fs;

% a1 = -2rcos(theta)
% a2 = r^2
% a0 = 1

% Declaring denominator and numerator variables
a = [1 -2*poleRadius*cos(theta) poleRadius^2];
b = 1;

% Applying freqz function
[h, f] = freqz(b,a,n,fs);

% Converting frequency response vector to decibels (h is complex)
hDB = 20*log(abs(h));

% Plotting data
plot(f, hDB);
title("Plot of the Magnitude Response of the Filter")
xlabel("Frequency (Hz)");
ylabel("Magnitude (dB)");

figure;
h1 = impz(b,a);

% stem(n1,h1,'linewidth',2);
stem(h1);
grid on;
xlabel('Sample Index (n)');
ylabel('Magnitude of Impulse Response');
title('Impulse Response of the Filter');
