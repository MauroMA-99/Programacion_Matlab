% -------------------------------------------------------------
% SEÑAL COSENO
% x(t)=A*cos(2*pi*t/T)
% -------------------------------------------------------------
T=0.001; % T: Periodo del coseno
A=1; % A: Amplitud del coseno.
N= 3; % n: Número de periodos a mostrar
k=T/100; % k: intervalo entre muestra y muestra de la gráfica. 
t = 0 : k : N*T; % Vector Tiempo
x = A*cos(2*pi*t/T); % Vector Señal
figure(1)
plot(t,x,'r'); % Gráfica de la señal x(t)
grid on ; 
ylabel('x(t) Amplitud'); 
xlabel('t Seg');
title('Señal Coseno')