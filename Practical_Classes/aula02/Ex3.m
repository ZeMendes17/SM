tempo_x = 0:0.1:5;
tempo_y = 0:0.1:5;
tempo_w = 0:0.01:10;

x = 2*sin(4*pi * tempo_x);
y = cos(10*pi * tempo_y);
z = x .* y;
w = 3*sin(pi*tempo_w) + 2*sin(6*pi*tempo_w);

% figure(1)
% subplot(3, 2, 1)
plot(tempo_x, x, 'r-')
hold on
title("Sinal de x")
xlabel("time (s)")
ylabel("Amplitude")
grid

% subplot(3, 2, 2)
plot(tempo_x, y, 'b--', 'LineWidth', 3)
hold on
title("Sinal de y")
xlabel("time (s)")
ylabel("Ampltude")
grid

% subplot(3, 2, 3)
plot(tempo_x, z, 'g-o')
hold on
title("Sinal de z")
xlabel("time(s)")
ylabel("Amplitude")
grid

% subplot(3, 2, 4)
plot(tempo_w, w, 'y-', 'LineWidth', 3)
hold off
title("Sinal de w")
xlabel("tempo (s)")
ylabel("Amplitude")
grid