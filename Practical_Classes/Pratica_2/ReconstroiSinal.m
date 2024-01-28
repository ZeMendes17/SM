function [y,t] = ReconstroiSinal(x,Ta)
% x -> vetor de amostras do sinal
% Ta -> periodo de amostragem

N = length(x);
y = zeros(100*N, 1); %sinal reconstruido

fa = 1/Ta;
fy = 100 * fa; % frequencia de amostragem de Y
Ty = 1/fy;

t = [0:(length(y)- 1)]'*Ty; % vetor de instantes do tempo na nova discretização

for n = 1:N
    y = y + x(n)*sinc(fa*(t-(n-1)*Ta));
end

plot(t,y,[0:(N-1)]'*Ta,x,'.');
legend("Sinal Original", "Sinal reconstruido");
xlabel('Tempo');
ylabel('Sinal');
grid;
end

