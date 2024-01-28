Ta = 0.01;
t=0:Ta:5;
y = 2*cos(20*pi*t + pi/3);
x = 3*sin(100*pi*t - pi/4);
py = potencia(y,Ta, 1/10)
px = potencia(x,Ta, 1/50)

z = 2*cos(20*pi*t + pi/3) + 3*sin(100*pi*t - pi/4);
T = 1/gcd(10, 50);
pz=potencia(z, Ta, T)


% verifica se que a potencia é igual á soma da potencia de cada
% uma das parcelas, opção B)
