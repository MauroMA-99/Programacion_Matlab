% ----------------------------------------------------
% Función exponencial compleja: x = A*e^(j*nn/4)
% ----------------------------------------------------

n = -25:25;
A=1.5;
alfa=1;
xn = A*alfa.^(n).*exp(j*n/4);
subplot(211);
stem(n, real(xn),'r','linewidth',2);
grid on;
title('Parte Real de x[n]');
xlabel(' n ');
subplot(212);
stem (n, imag(xn),'b','linewidth',2);
grid on;
title ('Parte Imaginaria de x[n]');
xlabel ('n');
