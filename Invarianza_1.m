clear;clf;clc;
% -----------------------------------------------------------
% Invariancia en el tiempo
% Determinar si el sistema discreto Filtro Móvil es invariante
% -----------------------------------------------------------
% Generación de la secuencia de entrada
n = 0:40; 
k = 3; % Retardo de prueba
xn=cos(2*pi*0.0625*n)+cos(2*pi*0.625*n);
%
M = 4; % Número de puntos para evaluación del promedio móvil
%
% Secuencia de entrada x[n] retardada en k unidades de tiempo
xnk = [zeros(1,k) xn];
% Parametros del Filtro móvil
num = ones(1,4);
den=1;
% Cálculo de la salida y[n]
yn = (filter(num,den,xn))/M;
% Calculo de la salida ynk[n]
ynk = filter(num,den,xnk)/M;
% Cálculo de la diferencia entre las salidas: dif[n]=y[n]-y[n-k]
difn = yn - ynk(1+k:41+k);
% Plot the outputs
subplot(3,1,1)
stem(n,yn,'b');
ylabel('Amplitud');
title('Salida y[n]');grid;
subplot(3,1,2)
stem(n,ynk(1:41),'r');
ylabel('Amplitud');
title(['Salida debido al retardo de la entrada x[n-',num2str(k),']']);
grid;
subplot(3,1,3)
stem(n,difn,'b');
xlabel('Tiempo n'); ylabel('Amplitud');
title('Señal diferencia');grid;
