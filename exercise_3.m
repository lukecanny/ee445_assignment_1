%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% exercise_3.m
%
% Exercise 3 as part of Assignment 1 for EE445.
% Luke Canny 19339166 25/10/2022
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Specifying Filters
b1 = [0.16 -0.48 0.48 -0.16]; % X Side
a1 = [1 0.13 0.52 0.3];       % Y Side

b2 = [0.634, 0, -0.634]; 
a2 = [1, 0, -0.268]; 

b3 = [0.634, 0, 0.634]; 
a3 = [1, 0, 0.268]; 

b4 = [0.634, -5, 10]; 
a4 = [10, -5, 1]; 

% Part (i)
% Applying freqz function
[h, w] = freqz(b2,a2,2048);

% Converting frequency response vector to decibels (h is complex)
hDB = 20*log(abs(h));
figure;
% Plotting data
plot(w, hDB);
title("Plot of the Magnitude Response of the Filter")
xlabel("Normalised Frequency (pi radians per sample)");
ylabel("Magnitude (dB)");

figure;

n1 = [0:25];
h1 = impz(b1,a1,n1);

% stem(n1,h1,'linewidth',2);
stem(h1);
grid on;
xlabel('Sample Index (n)');
ylabel('Magnitude of Impulse Response');
title('Impulse Response of the Filter');

