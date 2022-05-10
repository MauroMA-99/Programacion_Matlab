% ----------------------------------------------------
% Laboratorio N° 2: Ejercicio 2.12
% (j*nn/4)
% Función exponencial compleja: x = Ae
% ----------------------------------------------------

nn = 0:25;
A=1;
xn = A*exp(j*nn/4);
subplot(211);
stem(nn, real(xn),'r');
grid on;
title('Parte Real de x[n]');
xlabel(' n ');
subplot (212);
stem (nn, imag(xn),'b');
grid on;
title ('Parte Imaginaria de x[n]');
xlabel ('n');
