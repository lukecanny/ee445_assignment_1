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
theta = poleFrequency(2*pi)/fs;

