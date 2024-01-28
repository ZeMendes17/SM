function H = Entropia(texto)
%ENTROPIA Summary of this function goes here
%   Detailed explanation goes here
[Simbolos,Frequencia] = Alfabeto2(texto);
H = 0;
for i = 1:length(Simbolos)
    H = H + ((Frequencia(i)/100)*log2(1/(Frequencia(i)/100)));
end
disp(H)
end

