% A --> 14, B --> 64, C --> 5, D --> 10, E --> 7

%% a)
% faz se o calculo da arvore --> foto do telemovel
f = [14 64 5 10 7]'/100;
H = -f' * log2(f)

%% b)

%B  1
%A  00
%C  0110
%D  010
%E  0111

%% c)
%Total de bits:
totalBits = 0.14 * 1000 * 2 + 0.64 * 1000 * 1 + 0.05 * 1000 * 4 + 0.10 * 1000 * 3 + 0.07 * 1000 * 4;
mediaBits = totalBits/1000

