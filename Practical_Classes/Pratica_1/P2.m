%% Clear
clear;
close all;
clc;

%% Ex1
t = 0:0.01:5;

x = 2*sin(4*pi*t); %f=4*pi/2*pi=2 T=1/f=1/2  A=2
y = sin(10*pi*t + pi/2); %f=5 T=1/5 T=1
p = sin(20*pi*t + 70*pi/180) + sin(20*pi*t + 200*pi/180); %f=10 T=1/10 A=1
z = sin(6*pi*t) + sin(8*pi*t); %f=mdc(6*pi, 8*pi)/2pi=1 T=1/f=1/1=1 A=1+1=2
w = sin(6*pi*t) + sin(8*pi*t + 0.1); %f=mdc(6*pi, 8*pi)/2pi=1 T=1/f=1/1=1 A=1+1=2
q = sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t); %f=mdc(6*pi, 7*pi, 8*pi)/2pi=0.5 T=1/f=1/0.5=2 A=1+1+1=3

figure;
subplot(6,1,1), plot(t,x); 
subplot(6,1,2), plot(t,y);
subplot(6,1,3), plot(t,p);
subplot(6,1,4), plot(t,z);
subplot(6,1,5), plot(t,w);
subplot(6,1,6), plot(t,q);

%% Ex2
%T=1/mdc(f1:fn) ?????

%% Ex3
Ta=0.01;

t=0:Ta:5;
a=2*sin(2*pi*t)+cos(5*pi*t);
ax=potencia(a,Ta,0.5);

px=potencia(x,Ta,1/2)
py=potencia(y,Ta,1/5)
pp=potencia(z,Ta,1/10)
pz=potencia(z,Ta,1)
pw=potencia(w,Ta,1)
pq=potencia(q,Ta,2)

%% Ex4

% conjunto de sinais definidos pela alinea 2
% N = 3;

f1 = 10;
f2 = 20;
f3 = 30;

f0 = gcd(gcd(f1, f2), f3);
T0 = 1/f0;
Ta = 0.001;
t = 0:Ta:4*T0;

delta = (rand(1,3) * 2*pi) - pi; % rand vai dar valores de 0 a 1 -> 0 a 2pi -> -pi a pi
xt = sin(2*pi*10*t + delta(1)) + sin(2*pi*20*t + delta(2)) + sin(2*pi*30*t + delta(3));

% todos os graficos vao ser diferentes pois os valores sao aleatorios
plot(t, xt)
grid on;

pot = potencia(xt, Ta, T0);
disp("Potencia media: " + pot) % vai ter sempre o maesmo valor -> 1.5

