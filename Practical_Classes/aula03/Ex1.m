%% a
% t0 = 1/f0
% f0 = 2Hz frequencia
% T0 = 1/2 = 0.5 periodo
f = 2;
T0 = 1/2;
Ta = 0.001; % segundos % ta é 100 vezes mais pequeno que t0
t = 0:Ta:(4*T0); % 4 para mostrar 4 periodos
xt = 2*sin(4*pi*t);
figure(1)
plot(t, xt)
grid;

pot = calcPotencia(xt, Ta, T0); % exercicio 3
disp("Potencia: " + pot)

%% b
f0 = 5;
T0 = 1/f0;
Ta = 0.001;
t = 0:Ta:4*T0;
yt = sin(10*pi*t + (pi/2));
figure(2)
plot(t, yt)
grid on;

%% c
f0 = 10;
T0 = 1/f0;
Ta = 0.001;
t = 0:Ta:4*T0;
pt = sin(20*pi*t + 70*pi/180) + sin(20*pi*t + 200*pi/180);
figure(3)
plot(t, pt)
grid on;

%% d

f0_1 = 3;
f0_2 = 4;
% f0 é o maximo divisor comum de ambas as frequencias
f0 = gcd(f0_1, f0_2); % é o mdc
T0 = 1/f0;
Ta = 0.001;
t = 0:Ta:4*T0;
zt = sin(6*pi*t) + sin(8*pi*t);
figure(4)
plot(t, zt)
grid on;

%% e

f0_1 = 3;
f0_2 = 4;
f0 = gcd(f0_1, f0_2); % é o mdc
T0 = 1/f0;
Ta = 0.001;
t = 0:Ta:4*T0;
wt = sin(6*pi*t) + sin(8*pi*t + 0.1);
figure(5)
plot(t, wt)
grid on;

%% f

f1 = 3;
f2 = 3.5;
f3 = 4;

lambda = 10;
f0 = 1/lambda * gcd(gcd(f1*lambda, f2*lambda), f3*lambda);
T0 = 1/f0;
Ta = 0.001;
t = 0:Ta:4*T0;
qt = sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t);
figure(6)
plot(t, qt);
grid on

pot = calcPotencia(qt, Ta, T0); % exercicio 3
disp("Potencia: " + pot)








