function y = Chorus(x,fs,MaxDelay,NumComp)
%CHORUS Summary of this function goes here

N = length(x);
y = zeros(N,1);

for n=1:NumComp
    % CurDelay = random('uniform',0,MaxDelay,1,1);
    CurDelay = rand(1,1)*MaxDelay;
    dn = max([ 1 round(CurDelay*fs)]);
    y(dn:end) = y(dn : end) + x(1 : end-dn+1);
end
Px = x'*x/N; % Potência do sinal x
Py = y'*y/N; % POtência do sinal y
y = y*sqrt(Px/Py);

