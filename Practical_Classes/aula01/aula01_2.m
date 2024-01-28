x = linspace(-2*pi,0,200);

y = sin(x) .* exp(x);

plot(x, y, 'o-r');
axis([-8 0 -0.5 0.8]);
grid on

title("grafico sin(x)e^x");
legend("grafico sin(x) * e^x");
xlabel('eixo x');
ylabel('eixo y');