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

[poleTheta, poleRho] = cart2pol(poleXData, poleYData);
[zeroTheta, zeroRho] = cart2pol(zeroXData, zeroYData);

fprintf("Zeros (r, theta)\n");
fprintf('%d, %d\n', zeroRho(1), zeroTheta(1));
fprintf('%d, %d\n', zeroRho(2), zeroTheta(2));

fprintf("\nPoles (r, theta)\n");
fprintf('%d, %d\n', poleRho(1), poleTheta(1));
fprintf('%d, %d\n', poleRho(2), poleTheta(2));
