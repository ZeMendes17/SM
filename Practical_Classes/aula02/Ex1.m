tempo_x = 0:0.1:5;
tempo_y = 0:0.1:5;
tempo_w = 0:0.01:10;

x = 2*sin(4*pi * tempo_x);
y = cos(10*pi * tempo_y);
z = x .* y;
w = 3*sin(pi*tempo_w) + 2*sin(6*pi*tempo_w);

% usar drawknow no exercicio 4

[t1,t2] = meshgrid(tempo_x,tempo_x);
q = 2*sin(2*pi * (2*t1 + t2));

%plot dos graficos
figure(1)
subplot(3, 2, 1)
plot(tempo_x, x)
title("Sinal de x")
xlabel("time (s)")
ylabel("Amplitude")
grid

subplot(3, 2, 2)
plot(tempo_x, y)
title("Sinal de y")
xlabel("time (s)")
ylabel("Ampltude")
grid

subplot(3, 2, 3)
plot(tempo_x, z)
title("Sinal de z")
xlabel("time(s)")
ylabel("Amplitude")
grid

subplot(3, 2, 4)
plot(tempo_w, w)
title("Sinal de w")
xlabel("tempo (s)")
ylabel("Amplitude")
grid

subplot(3, 2, 5)
surf(x, y, q), axis tight, shading interp
title("Sinal de q")
xlabel("tempo 1(s)")
ylabel("tempo 2(s)")
zlabel("Amplitude")
grid



