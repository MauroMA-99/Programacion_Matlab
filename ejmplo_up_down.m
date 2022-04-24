
%Intervalo de tiempo discreto
n=0:7;
%Valor de cada una de las 21 muestras
xn=[3 1.5 2 2 0.5 1 0.5 2.5];
%Grafica de x[n]
figure(1)
stem(n,xn,'linewidth',2);
axis([-1 8 0 4]);
grid on;
xlabel('n');
ylabel('x[n]');
title('x[n] vs n');

% Down sampling
n3=0:3; % Intervalo de contraccion de x[2n]
% Valor de las muestras
yn_2=zeros(1,4);
yn_2=xn(1:2:8);
% Gráfica de x[2n]
figure(2);
stem(n3,yn_2,'linewidth',2);
axis([-1 8 0 4]);
grid on; 
xlabel('n');
ylabel('y[n]=x[2n]')
title('x[2n] vs n');

% Intervalo de tiempo discreto
% n2=0:14; % Intervalo de extensión de x[n/2]
% % Valor de las muestras
% yn_1=zeros(1,15);
% yn_1(1:2:15)=xn;
% % Gráfica de x[n/2]
% figure(2);
% stem(n2,yn_1,'linewidth',2);
% axis([-1 15 0 4]);
% grid on; 
% xlabel('n');
% ylabel('y[n]=x[n/2]')
