% -----------------------------------------------------------
% Laboratorio N° 3: Ejercicio 3.4
% Estabilidad de un sistema SDLIT
% Determinar si el sistema discreto Promedio Móvil es estable
% -----------------------------------------------------------
% Parámetros del sistema discreto Promedio Móvil
% Para M = 5, numera = [1 1 1 1 1] y denomina = [1];
N = 200;
n = 0: N; 
% Cálculo del h[n] del Promedio Móvil 
M=5;
numera = ones(1,M);
denomina=1;
hn = (1/M).*impz(numera,denomina,N+1);
% Evaluacion si h[n] es acotada
suma = 0;
for k = 1:N+1;
suma = suma + abs(hn(k));
 if abs(hn(k)) < 10^(-6), 
 break, 
 end
end
disp('Valor del |h[n]| = '),disp(hn(k)),disp('--> |h[n]| es acotada');
% Gráfica de la respuesta impulsional
stem(n,hn,'r');grid;
xlabel('Tiempo n');
ylabel('Amplitud h[n]');
title('Respuesta impulsional del sistema discreto Promedio Móvil'); 
% Cálculo del valor de S
S = sum(abs(hn),1);
disp('Valor de S = '),disp(S), disp('--> sistema discreto estable');