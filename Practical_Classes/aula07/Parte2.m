%% Ex1

Ta = 0.01;
N = 1000;
figure(1)
[x,t] = GeraSinal(N,Ta);

%% Ex2
figure(2)
[X, f] = espetro(x,Ta);
% axis([-25 25 0 0.5])

%% Ex3
filterX = zeros(1, length(f));
filterX(f>-2 & f<2) = X(f>-2 & f<2);  %filtro
figure(3)
% stem(f, abs(filterX));
% title("Espetro do Sinal Filtrado");
plot(t,x, 'b-')
hold on
[x1, Ta] = reconstroi(filterX, f);
title("Sinal Filtrado");
