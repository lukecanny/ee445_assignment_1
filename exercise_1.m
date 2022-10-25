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

% Converting frequency response vector to decibels (h is complex)
hDB = 20*log(abs(h));

% Plotting data
plot(f, hDB);
title("Plot of the Magnitude Response of the Filter")
xlabel("Frequency (Hz)");
ylabel("Magnitude (dB)");
figure;

[vz,vp,vk] = zplane(b,a);
title("Pole-Zero Map of the Magnitude Response")
poleXData = vp.XData;
poleYData = vp.YData;
zeroXData = vz.XData;
zeroYData = vz.YData;

fprintf("Zeros located at\n");
fprintf('%d, %d\n', zeroXData(1), zeroYData(1));
fprintf('%d, %d\n', zeroXData(2), zeroYData(2));

fprintf("Poles located at\n");
fprintf('%d, %d\n', poleXData(1), poleYData(1));
fprintf('%d, %d\n', poleXData(2), poleYData(2));
