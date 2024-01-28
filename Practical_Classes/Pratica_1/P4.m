%% Clear
clear;
close all;
clc;

%% Ex3
% a)
T = 1;
Ta = 0.01;
k = 10;
t = 0:Ta:(k*T-Ta);

x = sin(2*pi*t);
figure(2);
espetro(x, Ta);
% ou
% f0 = 1;
% T0 = 1/f0;
% Np = 100;
% N = round(Np*T0/Ta);
% t = (0:N-1)'*Ta;
% x = sin(2*pi*f0*t);

% b)
Ta = 0.05;
T0 = 50;
f0 = gcd(7, gcd(5, 6));
t = [0 : Ta : (T0-Ta)];
y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t -pi/4);
figure(2)
espetro(y, Ta);

% c)
Ta = 0.01;
T0 = gcd(10, 20);
Np = 100;
N = round(Np*T0/Ta);
t = (0:N-1)'*Ta;

w = 10 + 14*cos(20*pi*t - pi/3) + 8*cos(40*pi*t + pi/2);
figure(1);
espetro(w, Ta);

% d)
z = (square(2*pi*1*t)+1)/2;

figure;
espetro(z,Ta);

% e)
q=sawtooth(2*pi*1*t + pi/2 , 1/2);

figure;
espetro(q,Ta);

%% Ex5

T = 1;
Ta = 0.01;
k = 10;
t = 0:Ta:(k*T-Ta);

x = sin(2*pi*t);
figure(1);
plot(t, x, 'b');
grid;

figure(2);
[X,f] = espetro(x, Ta);
figure(3);
[x,t]=reconstroi(X,f);
%[x,t]=Reconstroi(X2,f2);
%figure;
%plot(t,x);
