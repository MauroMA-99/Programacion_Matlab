clear;clf;clc;
% ----------------------------------------------------
% Filtro Promedio 
% Móvil de M puntos.
% ----------------------------------------------------

% Generación de la señal discreta de entrada
fm = 8000; % Frecuencia de muestreo en Hz.
Tm = 1/fm; % Periodo de muestreo en segundos
f = 100; % frecuencia de la sinusoide en Hz.
n = 0:Tm:0.10-Tm;
N = length(n); % Longitud de los datos del proceso
s = cos(2*pi*f*n); % Sinusoide de baja frecuencia
r = 0.5*(0.5-rand(1,N)); % Secuencia de ruido
x = s+r;
% Implementación del Filtro Promedio Móvil
M = 8; % Longitud de datos deseado
num = ones(1,M);
y = filter(num,1,x)/M; % Cálculo del Promedio Móvil 
% utilizando la función filter
% Presentación de la señal discreta de la entrada y salida 

subplot(2,2,1);
plot(n,s,'.r');grid;
axis([0, 0.10, -1.5, 1.5]);
xlabel('Tiempo n (Seg)'); 
ylabel('Amplitud');
title('Señal discreta N° 1');

subplot(2,2,2);
plot(n,r,'b');grid;
axis([0, 0.10, -1.5, 1.5]);
xlabel('Tiempo n (Seg)'); 
ylabel('Amplitud');
title('Señal discreta ruido N° 2');

subplot(2,2,3);
plot(n,x,'.r'); grid;
axis([0, 0.10, -1.5, 1.5]);
xlabel('Tiempo n (Seg)'); 
ylabel('Amplitud');
title('Señal discreta de entrada');

subplot(2,2,4);
plot(n,y,'.r'); grid;
axis([0, 0.10, -1.5, 1.5]);
xlabel('Tiempo n (Seg)'); 
ylabel('Amplitud');
title('Señal discreta de salida');
axis;
