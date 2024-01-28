%% Parte 1: Amostragem e Reconstrução de Sinais

% 2 --> testa a funçao ReconstroiSinal
Ta = 0.2;
t = [0:Ta:5]';
x = sin(2*pi*t);
figure(1)
ReconstroiSinal(x, Ta);

Ta = 0.04;
t = [0:Ta:5]';
y = sin(10*pi*t)+ cos(12*pi*t) + cos(14*pi*t - pi/4);
figure(2)
ReconstroiSinal(y,Ta);

%% Parte 2: Quantização da Amplitude de Sinais

% 1
Ta = 0.01;
t = [0:Ta:5]';
sig = sin(2*pi*t);

nbit = 4; % 2 3 ou 4
Npal = 2^nbit;
delta = 2/Npal;

partitiion = [-1+2*delta/2:delta:1-delta/2];
codebook = [-1+delta/2:delta:1-delta/2];
[index, quants] = quantiz(sig, partitiion, codebook);

figure(1)
plot(t, sig, t, quants)
legend("Original Signal", "Quantized Signal");
grid on;

% 2
[X,f] = espetro(sig,Ta);
figure(2)
plot(f, abs(X), 'b-')

hold on % figure(3)
[Y,f2] = espetro(quants,Ta);
plot(f2, abs(Y), 'r-')

% 3
figure(3)
ReconstroiSinal(quants, Ta);
legend("Quantized Signal Reconstructed")