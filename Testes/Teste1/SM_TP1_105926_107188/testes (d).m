%% testar d)
Ta = 0.01;
Np = 20;
F0 = 1/2;
N = round(Np/(F0*Ta)); %
t = (0:N-1)*Ta; % tempo em que o sinal vai ser representado
y = 8*cos(5*pi*t + pi/4) + 6*sin(7*pi*t - pi/5);
tempo_espetro(y, Ta, F0, Np, 2)

%% 
Ta = 0.01;
F0 = 4;
Np = 10;
z = (square(2*pi*F0*t)+2)-2;
tempo_espetro(z, Ta, F0, Np, 0)