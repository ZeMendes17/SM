load("Mensagem.mat");
%% ex1
simbolos = Alfabeto1(Mensagem);
%% ex2
[simbolos2, frequencia] = Alfabeto2(Mensagem);

%% ex3
% como o numero que é possivel fazer com n bits é 2^n, e o nosso n = 9
% entao o numero de bits é 4

%% ex4
% probabilidades iguais e com probabilidades diferentes
nbits = NumeroBits(Mensagem);
nbits2 = NumeroBits('AABCABABAAABBCABCAAC'); % tem de dar 34

%% ex5
% arvore binaria

%% ex6
H = Entropia(Mensagem);
H2 = Entropia('AABCABABAAABBCABCAAC'); % tem de dar 1.4855