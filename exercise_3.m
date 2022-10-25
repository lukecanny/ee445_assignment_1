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


% % Part (i)
% % Applying freqz function
% [h, w] = freqz(b1,a1,1024);
% 
% % Converting frequency response vector to decibels (h is complex)
% hDB = 20*log(abs(h));
% figure;
% % Plotting data
% plot(w, hDB);
% title("Plot of the Magnitude Response of the Filter")
% xlabel("Normalised Frequency (pi radians per sample)");
% ylabel("Magnitude (dB)");
% 
% figure;
% 
% h1 = impz(b1,a1);
% 
% % stem(n1,h1,'linewidth',2);
% stem(h1);
% grid on;
% xlabel('Sample Index (n)');
% ylabel('Magnitude of Impulse Response');
% title('Impulse Response of the Filter');
% 
% % Part (ii)
% % Applying freqz function
% [h, w] = freqz(b2,a2,1024);
% 
% % Converting frequency response vector to decibels (h is complex)
% hDB = 20*log(abs(h));
% figure;
% % Plotting data
% plot(w, hDB);
% title("Plot of the Magnitude Response of the Filter")
% xlabel("Normalised Frequency (pi radians per sample)");
% ylabel("Magnitude (dB)");
% 
% figure;
% 
% h1 = impz(b1,a1);
% 
% % stem(n1,h1,'linewidth',2);
% stem(h1);
% grid on;
% xlabel('Sample Index (n)');
% ylabel('Magnitude of Impulse Response');
% title('Impulse Response of the Filter');
% 
% Part (iii)
% Applying freqz function
[h, w] = freqz(b3,a3,1024);

% Converting frequency response vector to decibels (h is complex)
hDB = 20*log(abs(h));
figure;
% Plotting data
plot(w, hDB);
title("Plot of the Magnitude Response of the Filter")
xlabel("Normalised Frequency (pi radians per sample)");
ylabel("Magnitude (dB)");

figure;

h1 = impz(b3,a3);

% stem(n1,h1,'linewidth',2);
stem(h1);
grid on;
xlabel('Sample Index (n)');
ylabel('Magnitude of Impulse Response');
title('Impulse Response of the Filter');

% % Part (iv)
% % Applying freqz function
% [h, w] = freqz(b4,a4,1024);
% 
% % Converting frequency response vector to decibels (h is complex)
% hDB = 20*log(abs(h));
% figure;
% % Plotting data
% plot(w, hDB);
% title("Plot of the Magnitude Response of the Filter")
% xlabel("Normalised Frequency (pi radians per sample)");
% ylabel("Magnitude (dB)");
% 
% figure;
% 
% h1 = impz(b4,a4);
% 
% % stem(n1,h1,'linewidth',2);
% stem(h1);
% grid on;
% xlabel('Sample Index (n)');
% ylabel('Magnitude of Impulse Response');
% title('Impulse Response of the Filter');

