% ----------------------------------------------------
% Función exponencial compleja: x =e^(j*frec_dig*n)
% ----------------------------------------------------

n = 0:25;
frec_dig=5*pi/9;
xn = exp(j*frec_dig*n);

t = 0:0.1:25;
xt = exp(j*frec_dig*t);

subplot(211);
stem(n, real(xn),'r','linewidth',2);
hold on
plot(t,real(xt));
grid on;
title('Parte Real de x[n]');
xlabel(' n ');
subplot(212);
stem (n, imag(xn),'b','linewidth',2);
hold on
plot(t,imag(xt),'b');
grid on;
title ('Parte Imaginaria de x[n]');
xlabel ('n');
