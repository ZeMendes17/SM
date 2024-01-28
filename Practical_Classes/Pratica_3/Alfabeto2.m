function [Simbolos, Frequencia] = Alfabeto2(texto)
%ALFABETO1 Summary of this function goes here
%   Detailed explanation goes here
N = length(texto);
n = 1;
Simbolos(n) = texto(1);
Frequencia(n) = sum(Simbolos(n) == texto) / N * 100;
for i = 2 : N
    if sum(Simbolos == texto(i)) == 0
        n = n + 1;
        Simbolos(n) = texto(i);
        Frequencia(n) = sum(Simbolos(n) == texto) / N * 100;
    end
end

end

