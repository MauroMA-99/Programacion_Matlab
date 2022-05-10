% -------------------------------------------------------------
% SECUENCIA COSENO 
% x[n]=A*cos(2*pi*(1/T)*Ts*n)
% -----------------------------------------------------------------
T=0.001; %Periodo del coseno
Ts= T/20; % Ts: Periodo de muestreo en segundos
A=1; % A: Amplitud del coseno x[n].
N=60; % N: Número de muestras de x[n].
n = 0 : N-1; % Vector Tiempo Discreto (60 muestras)
x = A*cos(2*pi*(1/T)*Ts*n); % Vector Señal x[n]
figure(2)
stem(n,x,'r'); % Gráfica de la secuencia x[n]
grid on ; 
ylabel('x[n] Amplitud'); 
xlabel('n Seg');
title('Secuencia Coseno muestreada')
