%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% exercise_1.m
%
% Exercise 1 as part of Assignment 1 for EE445.
% Luke Canny 19339166 25/10/2022
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Declaring inital constants
b = [1 0.4];
a = [1 -1.5*cos(pi/8) 0.96];
n = 1024;
fs = 12000;

% Applying freqz function
[h, f] = freqz(b,a,n,fs);
%  returns the n-point frequency response vector h and the corresponding 
% angular frequency vector w for the digital filter with transfer function 
% coefficients stored in b and a

% Converting frequency response vector to decibels (h is complex)
hDB = 20*log(abs(h));

% Plotting data
plot(f, hDB);
xlabel("Frequency (Hz)");
ylabel("Magnitude (dB)");