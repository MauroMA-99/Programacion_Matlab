% -------------------------------------------------------------
% Adiccion y reduccion de muestras de una señal triangulo discreto
% ---------------------------------------------------------------

%Triangulo discreto
n=-10:10; %Intervalo de extension x[n]
%Valor de cada una de las 21 muestras
xn=[0:1:10 9:-1:0];
%Grafica de x[n]
subplot(3,1,1);
stem(n,xn,'linewidth',2);
axis([-20 20 0 11]);
grid on;
xlabel('n');
ylabel('x[n]');
title('x[n] vs n');

%Up sampling
n2=-20:20; %Intervalo de extension de x[n/2]
%Valos de las muestras
yn1=zeros(1,41);
yn1(1:2:41)=xn;
%Grafica de x[n/2]
subplot(3,1,2);
stem(n2,yn1,'linewidth',2);
axis([-20 20 0 11]);
grid on;
xlabel('n');
ylabel('y[n]=x[n/2]');
title('x[n/2] vs n');

%Down sampling
n3=-5:5; %Intervalo de contraccion x[2n]
%Valor de las muestras
yn2=xn(1:2:21);
%Grafica de x[2n]
subplot(3,1,3);
stem(n3,yn2,'linewidth',2);
axis([-20 20 0 11]);
grid on;
xlabel('n');
ylabel('y[n]=x[2n]');
title('x[2n] vs n');




















