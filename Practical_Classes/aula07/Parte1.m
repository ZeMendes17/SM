load('/home/mendes/Desktop/SM/aula07/Guitar03.mat')
% x --> vetor com as amostras do sinal captado diretamente de uma guitarra
% eletrica, sem processamento
% fa --> frequencia de amosragem em Hz
%% Ex1
%sound(x, fa) % som produzido pelo sinal

%% Ex2
Ta = 1/fa;
[X, f] = espetro(x, Ta);

%% Ex3

fL = 100; %100 % 400 %600
fH = 400; %400 % 600 % 1200
H = zeros(size(f));

H(f>-fH & f<-fL) = 1;
%H(f>-fL) = 0
H(f>fL & f<fH) = 1;
%H(f>fH) = 0;
figure(2);
plot(f, H);
title("Filtro")
 xlim([-2e3 2e3]);
 ylim([0 2]);
ylim([0 2]);

Xf = H.*X;
figure(3)
plot(f, abs(Xf))
title("Sinal filtrado")

[w, T] = reconstroi(Xf, f);
% w --> real
sound(w, fa)


