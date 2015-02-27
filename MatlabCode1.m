% EE3370 Project 1
% MATLAB code for Project 1
% Monica Arroyo
% Date 2/27/15

clc      % Clear screen 
clear    % Clear all variables
A = 3; f= 1000; omega = 2*pi*f; 
angle = (33/180)*pi; T=1/f;
t=linspace(-3*T,3*T,1000);
x_t=3*cos(omega*t+angle);
subplot(4,1,1)
plot(t,x_t, 'linewidth',2);grid on
subplot(4,1,2)
u_t=heaviside(t);
plot(t,u_t, 'linewidth',2);grid on
subplot(4,1,3)
plot(t,x_t.*u_t, 'linewidth',2);grid on
u_t=circshift(heaviside(t),[1,1]).*heaviside(t);
x_t2 = cos(omega*t).*sin(omega*t).*u_t;
subplot(4,1,4)
plot(t,x_t2,'linewidth',2);grid on