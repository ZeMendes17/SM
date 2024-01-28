function potencia = calcPotencia(x, Ta, T)
% o vetor x é um vetor linha
N = T/Ta; % numero de amostras
x = x(1:N); % para terem o mesmo tamanho
pot = x * x'; % ver o size para ver se é um vetor linha ou coluna
potencia = pot/N;
% pot = A^2/2
end