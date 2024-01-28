function [x,t] = reconstroi(X, f)

    N = length(X);
    X = ifftshift(X);
    x = ifft(X)*N;
 
    fa = (f(2)-f(1))*N;
    Ta = 1/fa;   
    t = (0:N-1)*Ta;

    plot(t, x, 'r-')
    xlabel("Tempo (s)");
    ylabel("Sinal (x(t))")
    grid
end

