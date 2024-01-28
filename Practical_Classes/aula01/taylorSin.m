function result = taylorSin(x, N)
% x e um vetor
% n e um inteiro
    s = zeros(1, length(x));
    for n = 1:N
            s = s + x.^n / factorial(n) .* sin(n * pi / 2);
    end

    result = s;






