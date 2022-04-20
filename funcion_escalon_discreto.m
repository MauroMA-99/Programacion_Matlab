% ---------------------------------
% FUNCION ESCALON UNITARIO EN 
% TIEMPO DISCRETO
% ---------------------------------

n=-5:10;
u_n=[zeros(1,5) ones(1,11)];
stem(n,u_n,'linewidth',3);
axis([-5 10 0 1.2]);
grid on;
xlabel('n');
ylabel('u[n]');
title('u[n] vs n');
