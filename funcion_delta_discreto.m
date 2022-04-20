% ---------------------------------
% FUNCION DELTA EN TIEMPO DISCRETO
% ---------------------------------

n=-3:3;
delta_n=[zeros(1,3) 1 zeros(1,3)];
stem(n,delta_n,'linewidth',3);
axis([-3 3 0 1.2]);
grid on;
xlabel('n');
ylabel('delta[n]');
title('delta[n] vs n');
