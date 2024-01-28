%% Ex1

%alinea a)
Ta = 0.01;
tx = 0:Ta:5;                % cria uma matriz/array de n colunas e 1 linha 
x = 2*sin(4*pi*tx);         % t = inicial:intervalo:final
                            % Quando o intervalo é igual a 1 este pode ser
%alinea b)                  % omitido
y = cos(10*pi*tx);

%alinea c)
z = x.*y; % mutiplicação ponto a ponto

%alinea d)
tw = 0:Ta:10;
w = 3*sin(pi*tw) + 2*sin(6*pi*tw);

%alinea e)
t1 = 0:Ta:5;
t2 = 0:Ta:5;
N = length(t1);
q = zeros(N,N);
for i=1:N
   q(:,i) = 2*sin(2*pi*(2*t1+2*t2(i)));
end

% whos x ---> lista atributos da variavel


%% Ex2
figure;
plot(tx, x);
figure;
plot(tx, y);
figure;
plot(tx, z);
figure;
plot(tw, w);
figure;
mesh(t1,t2,q);
colorbar;
% Maior tempo de amostragem ----> representação menos accurate do sinal mas
% ocupa menos memoria
% Mais rapido

%% Ex3

Ta = 0.01;
tx = 0:Ta:5;                
x = 2*sin(4*pi*tx); 
y = cos(10*pi*tx);
z = x.*y;

tw = 0:Ta:10;
w = 3*sin(pi*tw) + 2*sin(6*pi*tw);

figure(6);
subplot(4, 1, 1), plot(tx, x, 'R-', LineWidth=0.5);
subplot(4, 1, 2), plot(tx, y, 'B--', LineWidth=2);
subplot(4, 1, 3), plot(tx, z, 'G-o', LineWidth=0.5);
subplot(4, 1, 4), plot(tw, w, 'Y-', LineWidth=3);

%% Ex4

Ta = 1/25;
t = 0:Ta:5;
x1 = -5:Ta:5;
x2 = -5:Ta:5;
N = length(t);
N1 = length(x1);
r = zeros(N,N1);

for n = 1:N
    tic
    for i = 1:N1
        r(i, :) = 2*sin(2*pi * sqrt(x1(i)^2 + x2.^2) - 2*pi*t(n));
    end
    mesh(x1, x2, r)
    view(2) % vista em 2D
    drawnow()
    pause(Ta-toc)
end



