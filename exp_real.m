% -------------------------------------------------------------
% Secuencia Exponencial Real Discreta
%  x[n]= Aα^(n)
% -------------------------------------------------------------
A=2; % A: Amplitud
n = -10:30; % Vector Tiempo Discreto

% alfa<1
alfa= 0.9; % alfa: base de la exponencial real
xn1 = A*(alfa).^n; % Vector Señal x[n]
subplot(2,2,1)
stem(n,xn1,'r'), % Gráfica de x[n]
grid on ; 
ylabel('x[n]Amplitud'); 
xlabel('n Seg');
title('Exponencial real decreciente')

% alfa>1
alfa= 1.1; % alfa: base de la exponencial real
xn2 = A*(alfa).^n; % Vector Señal x[n]
subplot(2,2,2)
stem(n,xn2,'r'), % Gráfica de x[n]
grid on ; 
ylabel('x[n]Amplitud'); 
xlabel('n Seg');
title('Exponencial real creciente')

% -1<alfa<0
alfa= -0.9; % alfa: base de la exponencial real
xn3 = A*(alfa).^n; % Vector Señal x[n]
subplot(2,2,3)
stem(n,xn3,'r'), % Gráfica de x[n]
grid on ; 
ylabel('x[n]Amplitud'); 
xlabel('n Seg');
title('Exp real decreciente oscilador')

% alfa<-1
alfa= -1.1; % alfa: base de la exponencial real
xn4 = A*(alfa).^n; % Vector Señal x[n]
subplot(2,2,4)
stem(n,xn4,'r'), % Gráfica de x[n]
grid on ; 
ylabel('x[n]Amplitud'); 
xlabel('n Seg');
title('Exp real creciente oscilador')
