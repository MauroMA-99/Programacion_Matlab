clear;clf;clc;
% -----------------------------------------------------------
% Convolución en tiempo continuo
% -----------------------------------------------------------

t=-1.2:0.0001:1.2;
xt=zeros(size(t));
ht=zeros(size(t));
xt(t>=-1 & t<=1)=1;
subplot(3,1,1),plot(t,xt,'r');
xlabel('t seg'); ylabel('x(t)');grid on;
title('Pulso rectangular x(t)');
axis([-1.5, 1.5, -0.2, 1.2]);
ht(t>=-1 & t<=1)=1;
subplot(3,1,2),plot(t,ht);
xlabel('t seg');ylabel('h(t)');grid on;
title('Respuesta impulsional h(t)');
axis([-1.5, 1.5, -0.2, 1.2]);
y=conv(xt,ht);
tt=t(1)+t(1):0.0001:t(end)+t(end);
subplot(3,1,3),plot(tt,y*0.0001,'k');
xlabel('t seg');ylabel('y(t)'); grid on;
title('Convolución x(t)*h(t)');
axis([-2.5, 2.5, -0.2, 2.2]);
