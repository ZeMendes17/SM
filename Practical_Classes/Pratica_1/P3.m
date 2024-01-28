%% Clear
clear;
close all;
clc;

%% Ex2
Ta = 0.001;
f0 = 1;
Np = 2; % numero de periodos
K = 10;
indices = 1:2:K-1;
bk = zeros(1, K-1);
bk(indices) = 4./(pi*indices);
bk = [0 bk];

ak = zeros(size(bk));
[x,t] = serieFourier(Ta, f0, Np, ak, bk);
figure(1);
t1 = 0:Ta:2-2*Ta;
y = square(2*pi*1*t1);
plot(t1, y, 'r');
hold on
plot(t, x, 'b');
grid;
legend('Square Wave', 'Serie Fourier K=30')
xlabel("Tempo (s)");
ylabel("x(t)");


%% Ex4

% Triangular wave

Ta=0.001;
Np=4;
K=100;
T=1; 
f=1/T;
t=0:Ta:4;

y=sawtooth(2*pi*T*t+pi/2, 1/2);
figure;
plot(t, y)
[ak, bk] = coefsFourier(Ta, 1/f0, y, K);
[x, t] = serieFourier(Ta, f0, Np, ak, bk);
figure;
plot(t, x)
