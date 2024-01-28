function [x,Ta] = Reconstroi_espetro(X, f)

X = ifftshift(X);
N = length(X);
x = ifft(X) * N;
fa = max(f)*2;
Ta = 1/fa;
t = [0:(N-1)]'*Ta;

plot(t, x, 'b-')
xlabel("Tempo (s)");
ylabel("Sinal (x(t))")
grid
end