x = 1:2:10;
y = linspace(-5, 5, 11);

ma = [1 5 1-1j; 4 1j -1]; % matriz

ma = [ma ; 1 2 3]; % adicioonar row

mb = [1;2;3];

ma = horzcat(ma, mb); % adicionar column

ma = ma(:,2:2:end); % apagar as colunas impares


