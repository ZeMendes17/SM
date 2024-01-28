%Ex 5.
clear all;
clc;

%% a)

Ta = 0.01;
f0 = 1;
T0 = 1/f0;
Np = 100;
N = round(Np*T0/Ta);
t = (0:N-1)'*Ta;
x = sin(2*pi*f0*t);

[X,fx] = Espetro(x,Ta);

[x,Ta] = Reconstroi_espetro(X,fx);