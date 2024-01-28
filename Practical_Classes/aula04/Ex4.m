% Triangular wave

Ta = 0.001;
f0 = 1;
T = 1;
Np = 4;
K = 14;
N = round(Np/(f0*Ta));
t = 0:Ta:T;

y = sawtooth(2*pi*f0*t+pi/2, 1/2);
[ak, bk] = coeficients(Ta, 1/f0, y, K);
[x, t] = serieFourier(Ta, f0, Np, ak, bk);

plot(t, x)