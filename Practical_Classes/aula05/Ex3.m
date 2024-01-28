%% a)
Ta = 0.01;
f0 = 1;
T0 = 1/f0;
Np = 100;
N = round(Np*T0/Ta);
t = (0:N-1)'*Ta;
x = sin(2*pi*f0*t);
figure(1)
[X, fx] = Espetro(x, Ta);
% ja faz o grafico do espetro


%% b)
Ta = 0.05;
T0 = 50;
f0 = gcd(7, gcd(5, 6));
t = [0 : Ta : (T0-Ta)];
y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t -pi/4);
figure(2)
[Y, fy] = Espetro(y, Ta);


%% c)
Ta = 0.01;
T0 = gcd(10, 20);
Np = 100;
N = round(Np*T0/Ta);
t = (0:N-1)'*Ta;
w = 10 + 14*cos(20*pi*t - pi/3) + 8*cos(40*pi*t + pi/2);
figure(3)
[W, fw] = Espetro(w, Ta);



%% 4)

figure(6)
[x, t] = Reconstroi_espetro(X, fx);
% plot(t, x)
plot(t(1:200), x(1:200))
xlabel("Tempo (s)")
ylabel("Amplitude");
grid


