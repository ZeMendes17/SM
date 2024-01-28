f = [0.05 0.05 0.1 0.1 0.2 0.2 0.3];

H = 0;
for i = 1:length(f)
    H = H + f(i)*log2(1/f(i));
end

N = 0;
a = [2 2 2 3 4 5 5];
f = [0.2 0.2 0.3 0.1 0.1 0.05 0.05];
for i = 1:length(a)
    N = N + a(i)*f(i);
end