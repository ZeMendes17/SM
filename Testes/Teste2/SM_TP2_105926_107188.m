%% Ex1
load('/home/mendes/Desktop/SM/Teste2/Guitar01.mat')
% da o fa e o x
% sound(x,fa)
Ta = 1/fa;
figure(1)
[X,f] = espetro(x,Ta);
figure(2)
[x,t] = reconstroi(X,f);
disp("Duração da musica:")
disp(t(length(t)))

%% Ex2
figure(3)
[X,f] = espetro(x,Ta);
xlim([-5e3 5e3])
ylim([0 4e-3])


%% Ex3
load('/home/mendes/Desktop/SM/Teste2/Guitar01.mat')
% da o fa e o x
fa_new = 2*fa; 
% sound(x,fa_new)
Ta = 1/fa_new;
figure(4)
[X,f] = espetro(x,Ta);
xlim([-5e3 5e3])
figure(5)
[x,t] = reconstroi(X,f);
xlim([0 30])
disp("Duração da musica:")
disp(t(length(t)))

%% Ex4
fL = 488.91;
fH = 488.93;
H = zeros(size(f));

H(f>-fH & f<-fL) = 1;
%H(f>-fL) = 0
H(f>fL & f<fH) = 1;
%H(f>fH) = 0;
figure(6)
plot(f, H);
title("Filtro")
% xlim([-5e3 5e3])
% ylim([0 4e-3])

Xf = H.*X;
figure(7)
plot(f, abs(Xf))
title("Sinal filtrado")
% apos aplicar o filtro, o som da guitarra é: 

figure(8)
[w, T] = reconstroi(Xf, f);
sound(w, fa)

%% Ex 5
load('/home/mendes/Desktop/SM/Teste2/Guitar01.mat')
Ta = 1/fa;
[X,f] = espetro(x,Ta);
[x,t] = reconstroi(X,f);
x_new = x(1:1000,:);
t_new = t(:, 1:1000);

nbit = 3;
Npal = 2^nbit;
delta = 2/Npal;

partitiion = [-1+2*delta/2:delta:1-delta/2];
codebook = [-1+delta/2:delta:1-delta/2];
[index, quants] = quantiz(x_new, partitiion, codebook);

figure(9)
plot(t_new, x_new, t_new, quants)

legend("Original Signal", "Quantized Signal");
grid on;


