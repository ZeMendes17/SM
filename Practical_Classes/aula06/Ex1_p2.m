%% 1
Ta = 0.01;
t = [0:Ta:5]';
sig = sin(2*pi*t);


nbit = 2; % fazer para 2 3 e 4 bits
Npal = 2^nbit;
Delta = 2/Npal;


partition = [-1+2*Delta/2:Delta:1-Delta/2];
codebook = [-1+Delta/2:Delta:1-Delta/2];
[index, quants] = quantiz(sig, partition, codebook);
figure(1)
plot(t, sig, t, quants);
legend('Original signal', 'Quantized signal');
grid

%% 2
Ta = 0.01;
t = [0:Ta:5]';
sig = sin(2*pi*t);
[X,f] = espetro(sig,Ta);
figure(2)
plot(f, abs(X), 'b-')
% hold on;
figure(3)
[Y,f2] = espetro(quants,Ta);
plot(f2, abs(Y), 'r-')
disp("Quanto maior o numero de bits tanto para um como para outro, aproximam-se ate coincdirem")


%% 3
figure(4)
ReconstroiSinal(quants,Ta) % ?
legend("Sinal Quantizado Reconstruido")