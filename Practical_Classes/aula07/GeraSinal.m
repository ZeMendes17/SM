function [x,t] = GeraSinal(N,Ta)
%GERASINAL Summary of this function goes here

t = [0:(N-1)]'*Ta;
phi = random('normal', 0, pi, N, 1);
phi_i1 = zeros(N,1);

for n = 2:N
    phi_i1(n) = phi_i1(n-1) + (phi(n)+phi(n-1))*Ta/2;
end

phi = random('normal', 0, pi, N, 1);
phi_i2 = zeros(N, 1);

for n = 2:N
    phi_i2(n) = phi_i2(n-1) + (phi(n) + phi(n-1))*Ta/2;
end

r = 0.5*sin(2*pi*10*t + 10*phi_i1) + 0.5*sin(2*pi*12*t + 10*phi_i2);
x = sin(2*pi*t) + r;
plot(t, x);
xlabel("Tempo em segundos")
ylabel("Sinal")
grid on
end


