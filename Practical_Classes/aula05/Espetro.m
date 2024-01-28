function [X,f] = Espetro(x,Ta)
% retorna e apresenta o espetro(mplitude apenas) de um sinal (passado
%através do seu vetor de amostras, 𝐱) amostrado com período de amostragem 𝑇𝑎. O
%gráfico do espetro deve apresentar no eixo das abcissas a frequência em Hz, desde
%−𝑓𝑎/2 a +𝑓𝑎/2, onde 𝑓0 = 1/𝑇0

N = length(x);
% X = fft(x)/N;
% X = fftshift(X);
X = fftshift(fft(x)) / N;

fa = 1/Ta;
df = 1/(N*Ta);
f = [0 : (N-1)]'*df - fa/2;
% f = [0 : df : (N-1)*df];

plot(f, abs(X), 'b-')
xlabel("Frequência em Hertz (Hz)")
ylabel("DFT (Magnitude)")
grid
end

