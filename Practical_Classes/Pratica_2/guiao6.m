%% Parte 1: Filtragem de Sinais de Som

% 1
load('/home/mendes/Desktop/SM/Pratica_2/Guitar03.mat')
% x --> vetor com as amostras do sinal captado diretamente de uma guitarra
% eletrica, sem processamento
% fa --> frequencia de amosragem em Hz
% sound(x,fa)

% 2
Ta = 1/fa;
[X,f] = espetro(x,Ta);
figure(1)
plot(f, abs(X), 'b-')
xlabel("Frequência em Hertz (Hz)")
ylabel("DFT (Magnitude)")
grid

% 3
fL = 400; %100 % 400 %600
fH = 600; %400 % 600 % 1200
H = zeros(size(f));

H(f>-fH & f<-fL) = 1;
%H(f>-fL) = 0
H(f>fL & f<fH) = 1;
%H(f>fH) = 0;
figure(2)
plot(f, H);
title("Filtro")
xlim([-2e3 2e3]);
ylim([0 2]); % para ver melhor o filtro

Xf = H.*X;
figure(3)
plot(f, abs(Xf))
title("Sinal filtrado")
% apos aplicar o filtro, o som da guitarra é: 

figure(4)
[w, T] = reconstroi(Xf, f);
sound(w, fa)

%% Parte 2:Filtragem de Sinais com Ruido

% 1
Ta = 0.001;
N = 10000;
figure(5)
[x,t] = GeraSinal(N,Ta);

% 2
figure(6)
[X, f] = espetro(x,Ta);
plot(f, abs(X), 'b-')
xlabel("Frequência em Hertz (Hz)")
ylabel("DFT (Magnitude)")
grid on;
xlim([-25 25])
ylim([0 0.5])

% 3
filterX = zeros(1, length(f));
filterX(f>-2 & f<2) = X(f>-2 & f<2);  %filtro
figure(7)
% stem(f, abs(filterX));
% title("Espetro do Sinal Filtrado");
plot(t,x, 'b-')
hold on
[x1, Ta] = reconstroi(filterX, f);
title("Sinal Filtrado");
