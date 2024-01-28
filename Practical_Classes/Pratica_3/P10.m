%% Ex1
% A --> 14, B --> 64, C --> 5, D --> 10, E --> 7

% a)
% faz se o calculo da arvore --> foto do telemovel
f = [14 64 5 10 7]'/100;
H = -f' * log2(f)

% b)

%B  1
%A  00
%C  0110
%D  010
%E  0111

% c)
%Total de bits:
totalBits = 0.14 * 1000 * 2 + 0.64 * 1000 * 1 + 0.05 * 1000 * 4 + 0.10 * 1000 * 3 + 0.07 * 1000 * 4;
mediaBits = totalBits/1000

%% Ex2
f = [0.14 0.64 0.05 0.10 0.07];
comp = 1000;
nBits = [2 1 4 3 4];
[NumBts,NumBPS] = GeraMensagem(f,comp,nBits);
disp(NumBts)
disp(NumBPS)

%% Ex3
% A --> 0.2; ! --> 0.05; L --> 0.25; P --> 0.15; O --> 0.35

% a
% O 0.35                        11
% L 0.25                        10
% A 0.20 ---> codigo de Hufman  01
% P 0.15                        001
% ! 0.05                        000

% b)
f = [0.35 0.25 0.2 0.15 0.05]';
H = -f' * log2(f)

nBits = 0.35*2 + 0.25*2 + 0.2*2 + 0.15*3 + 0.05*3

% c)
% OLA! --> 111001000
% d)      O L A  !

%% Ex4
% S  P   INTERVALO
  
% O 0.35 [0, 0.35[
% L 0.25 [0.35, 0.6[
% A 0.20 [0.6, 0.8[
% P 0.15 [0.8, 0.95[
% ! 0.05 [0.95 1[

% resto ver foto
