x = linspace(0, 2*pi, 100);
y = sin(x);
seno_serie2 = taylorSin(x, 2);
seno_serie10 = taylorSin(x, 10);
% plot(seno_serie10)
% hold on
% plot(seno_serie2)
% hold on
% plot(x, y, 'r')
% hold off
plot(x, y, 'r', x, seno_serie2, 'g', x, seno_serie10, 'b')


% seno_serie20 = taylorSin(x, 20);
% plot(x,y,'r', x, seno_serie20, 'k*')
% legend('sen', 'N=20')
% % sobrepoem se