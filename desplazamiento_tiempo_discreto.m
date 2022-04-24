% -----------------------------------------------------------------
% Generación de señal discreta triangulo discreto de 21 muestras
% -----------------------------------------------------------------

%Intervalo de tiempo discreto
n=0:20;
%Valor de cada una de las 21 muestras
xn=[0:1:10 9:-1:0];
%Grafica de x[n]
subplot(3,1,1);
stem(n,xn,'b','linewidth',3);
axis([-6 26 0 11]);
grid on;
xlabel('n');
ylabel('x[n]');
title('x[n] vs n');

%Grafica de x[n-5]
subplot(3,1,2);
stem(n+5,xn,'b','linewidth',3);
axis([-6 26 0 11]);
grid on;
xlabel('n');
ylabel('x[n-5]');
title('x[n-5] vs n');

%Grafica de x[n+5]
subplot(3,1,3);
stem(n-5,xn,'b','linewidth',3);
axis([-6 26 0 11]);
grid on;
xlabel('n');
ylabel('x[n+5]');
title('x[n+5] vs n');
