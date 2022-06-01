% ----------------------------------------------------
% Función senoidal compuesta: 
%           x =2*cos(n*pi/4)+sin(n*pi/8)
% ----------------------------------------------------

n = 0:35;
xn = 2*cos(n*pi/4)+sin(n*pi/8);

stem(n, real(xn),'r','linewidth',2);
grid on;
title('Parte Real de x[n]');
xlabel(' n ');
