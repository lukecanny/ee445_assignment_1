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
freqz(b1,a1);
n = [0:25];
h = impz(b1,a1,n);
figure
stem(n,h,'linewidth',2);
grid on;
xlabel('Sample Index (n)');
ylabel('Magnitude of Impulse Response');
title('Impulse Response of the Filter');

