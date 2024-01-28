function numBits = NumeroBits(texto)
%NUMEROBITS Summary of this function goes here
%   Detailed explanation goes here
  [Simbolos,Frequencia] = Alfabeto2(texto);
  [Frequencia,i] = sort(Frequencia,'descend');
  Simbolos = Simbolos(i);
  
  numBits = 0;
  
  for n = 1 : length(Simbolos)
    numBits = numBits + sum(texto == Simbolos(n))*n;
  end
  
  disp(numBits)
end

