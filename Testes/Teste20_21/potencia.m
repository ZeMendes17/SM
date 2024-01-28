function p = potencia(x,Ta, T)
    % o vetor x é um vetor linha
    N = T/Ta;
    x = x(1:N); % para terem o mesmo tamanho
    pot = x * x'; % ver o size para ver se é um vetor linha ou coluna
    p = pot/N;
end

