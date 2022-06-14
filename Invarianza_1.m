clear;clf;clc;
% -----------------------------------------------------------
% Invariancia en el tiempo
% Determinar si el sistema discreto Filtro Móvil es invariante
% -----------------------------------------------------------
% Generación de la secuencia de entrada
n = 0:40; 
k = 3; % Retardo de prueba
N = length(n); % Longitud de los datos del proceso
r = (rand(1,N)-0.5)/2; % Secuencia de ruido
xn=cos(2*pi*0.1*n)+r;
%
M = 3; % Número de puntos para evaluación del promedio móvil
%
% Secuencia de entrada x[n] retardada en k unidades de tiempo
xnk = [zeros(1,k) xn];
% Parametros del Filtro móvil
num = ones(1,M);
den=1;
% Calculo de la salida T[[x-k]]
T_xnk = filter(num,den,xnk)/M;
% Cálculo de la salida y[n]
yn = (filter(num,den,xn))/M;
y_nk=[zeros(1,k) yn];

% Plot the outputs
subplot(3,1,1)
stem(n,y_nk(1:41),'b','linewidth',2);
ylabel('Amplitud');
title(['y[n-',num2str(k),']']);grid;

subplot(3,1,2)
stem(n,T_xnk(1:41),'r','linewidth',2);
ylabel('Amplitud');
title(['T[x[n-',num2str(k),']]']);grid;

subplot(3,1,3)
difn = y_nk - T_xnk; % Cálculo de la diferencia: y[n-k]-T[x[n-3]]
stem(n,difn(1:41),'b','linewidth',2);
xlabel('Tiempo n'); ylabel('Amplitud');
title('Señal diferencia');grid;
