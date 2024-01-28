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

pot = calcPotencia(xt, Ta, T0);
disp("Potencia media: " + pot) % vai ter sempre o maesmo valor -> 1.5