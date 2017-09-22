%% Initialization
clear ; close all; clc

%X = [1 6.1101; 1 5.5277; 1 8.5186; 1 7.0032; 1 5.8598];
%y = [17.5920; 9.1302; 13.6620; 11.8540; 6.8233];
X = [1 1; 1 2; 1 3; 1 4];
y = [1; 2; 3; 4];
theta = [0; 0];
alpha = 0.01;
num_iters = 10;

[theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters);

theta
