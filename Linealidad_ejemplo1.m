clear;clf;clc;
% -----------------------------------------------------------
% Verificación de la linealidad de un sistema discreto
% Determinar si el sistema:
% y[n]=1/M{x[n]+x[n-1]+...+x[n-M-1]} es lineal
% -----------------------------------------------------------
% Generamos 2 secuencia arbitrarias con los mismos elementos
N=100;
nn=0:N-1;
xn1=0.5*nn;
xn2=sin(2*pi*0.3*nn);
%
% Generamos las salidas para cada una de las entradas
alfa1=0.1;
alfa2=0.5;
M = 8; % Número de puntos para evaluación del promedio
num = ones(1,M);
% Cálculo del Promedio Móvil
% yn1[n] = T{alfa1*xn1[n]}
yn1 =filter(num,1,alfa1*xn1)/M;
% yn2[n] = T{alfa2*xn2[n]}
yn2 =filter(num,1,alfa2*xn2)/M; 
% Generamos una secuencia que sea una combinación lineal de ambas
% x3[n] = alfa1*x1[n] + alfa2*x2[n]
xn3 = alfa1*xn1+alfa2*xn2; 
%
% Ahora calculamos la salida para la entrada x3[n]
% yn3[n] = T{xn3[n]} = T{alfa1*xn1[n] + alfa2*xn2[n]}
yn3 = filter(num,1,xn3)/M; % Cálculo del Promedio Móvil;
%
% Dibujo de las salidas
% Dibujo de la salida de la suma de las entradas independientes.
plot(yn3,'ro');grid;
hold on
% Dibujo de la suma de las salidas independientes
% yn3s = T{alfa1*xn1[n]} + {alfa2*xn2[n]}
yn3s = yn1 + yn2;
plot(yn3s','g*');
title('El sistema discreto es lineal')
xlabel('n')
legend('yn3[n]','y1[n]+y2[n]');
