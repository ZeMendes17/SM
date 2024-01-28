function [ak,bk] = coeficients(Ta,T0,x,K)
    % x é um vetor coluna
    f0 = 1/T0;
    N = round(T0/Ta);
    %t = (0 : (N-1))*Ta;
    ak = zeros(K, 1);
    bk = zeros(K, 1);
    K = 0:K-1;

    for i = 1:N
        ak = ak + 2/N * (x(i) * cos(2*pi*K*f0*i*Ta));
        bk = bk + 2/N * (x(i) * sin(2*pi*K*f0*i*Ta));
    end
end

