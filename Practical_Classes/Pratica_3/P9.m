%% Ex1
load("Mensagem.mat");
Simbolos = Alfabeto1(Mensagem);
disp("Ex1")
disp(Simbolos)

%% Ex2

[Simbolos, Frequencia] = Alfabeto2(Mensagem);
disp("Ex2")
disp(Simbolos)
disp(Frequencia)

%% Ex3
%%A ordem da frequencia das letras e : Q,W,S,D,X,C,Z,V,R

%%Portanto, podemos definir um codigo binario tal que:

% Q - 0000
% W - 0001
% S - 0010
% D - 0011
% X - 0100
% C - 0101
% Z - 0110
% V - 0111
% R - 1000

%%Como a mensagem tem 304 chars, com este codigo precisariamso de:

Nbits = 4*304;

%% Ex4
% Queremos:
% Q (40.1%) - 0
% S (13.5%) - 10
% W (12-8%) - 110
% Z (8.9%)  - 1110
% D (8.2%)  - 11110
% C (6.3%)  - 111110
% X (5.3%)  - 1111110
% V (4.6%)  - 11111110
% R (0.3%)  - 111111110

% probabilidades iguais e com probabilidades diferentes
nbits = NumeroBits(Mensagem);
nbits2 = NumeroBits('AABCABABAAABBCABCAAC'); % tem de dar 34

%% Ex5
% fazer as arvores binarias das duas codfs anteriores

%% Ex6
H = Entropia(Mensagem);
H2 = Entropia('AABCABABAAABBCABCAAC'); % tem de dar 1.4855
