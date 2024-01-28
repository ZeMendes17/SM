function Simbolos = Alfabeto1(texto)
%ALFABETO1 Summary of this function goes here
%   Detailed explanation goes here
N = length(texto);
n = 1;
Simbolos(n) = texto(1);

for i = 2 : N
    if sum(Simbolos == texto(i)) == 0
        n = n + 1;
        Simbolos(n) = texto(i);
    end
end

end

