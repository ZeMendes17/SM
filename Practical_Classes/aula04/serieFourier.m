function [x, t] = serieFourier(Ta, f0, Np, a, b)

    N = round(Np/(f0*Ta)); % numero de amostras
    t = (0 : (N-1))*Ta; % intervalo de tempo % t = 0:Ta:N*Ta - Ta
    K = length(a);
    
    % fazer loop for
    x = zeros(1,N); % como t é um vetor coluna, x tambem tem de ser um vetor coluna
    for k = 1:K
        x = x + a(k) * cos(2*pi*(k-1)*f0*t) + b(k) * sin(2*pi*(k-1)*f0*t);
    end
end