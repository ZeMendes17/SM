function [NumBits,NumBPS] = GeraMensagem(f,CompMesg,nBits)
%GERAMENSAGEM Summary of this function goes here
%   Detailed explanation goes here

% pd = makedist('Multinomial','probabilities',f/sum(f));
% Mesg = random(pd,CompMesg,1);
Mesg = randsample(1:length(f), CompMesg, true, f/sum(f));
N = length(f);
NumBits = 0;
for n = 1 : N
    NumBits = NumBits + sum(Mesg == n) * nBits(n);
end
NumBPS = NumBits/CompMesg;
end

