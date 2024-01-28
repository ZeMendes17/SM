function Simbolos = Alfabeto1(Texto)

N = length(Texto); % vai ser usado para percorrer o texto todo
n = 1;
Simbolos(n) = Texto(1); % guarda o primeiro simbolo ja

for i = 2:N
    if sum(Simbolos == Texto(i)) == 0
        n = n + 1;
        Simbolos(n) = Texto(i);
    end
end
end

