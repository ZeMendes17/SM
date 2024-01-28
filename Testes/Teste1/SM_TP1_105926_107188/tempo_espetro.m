function tempo_espetro(y,Ta, F0, Np, T_F)

if T_F == 0 || T_F == 2
    N = round(Np/(F0*Ta)); %
    t = (0:N-1)*Ta; % tempo em que o sinal vai ser representado
    y = y(1:N); % para terem o mesmo tamanho

    figure;
    plot(t, y); % em função do tempo
    grid;
    xlabel("tempo (s)")
    ylabel("x(t)")
end


if T_F == 1 || T_F == 2

     N_espetro = length(y);
     Y = fftshift(fft(y)) / N_espetro;
    
     fa = 1/Ta;
     df = 1/(N_espetro*Ta);
     f = [0 : (N_espetro-1)]'*df - fa/2;
     figure;
     plot(f, abs(Y), 'b-')
     xlabel("Frequência em Hertz (Hz)")
     ylabel("DFT (Magnitude)")
     grid;
end

if T_F  ~= 0 && T_F ~= 1 && T_F ~= 2
    fprintf("T_F deverá ter valores de 0, 1, 2\n")
end

end

