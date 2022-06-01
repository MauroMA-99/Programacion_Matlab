% ----------------------------------------------------
% Función senoidal compuesta: 
%           x =cos(Ωn)
% ----------------------------------------------------

n = 0:50;
t=0:0.1:50;
frec_dig=[0 pi/4 pi/2 3*pi/4 pi 5*pi/4 3*pi/2 7*pi/4 2*pi];

for i=1:1:9
    subplot(3,3,i)
    xn = cos(n*frec_dig(i));
    stem(n,xn,'r','linewidth',1);
    hold on
    
    if i<=5
        xt = cos(t*frec_dig(i));
        plot(t,xt,'b');
    else
        xt = cos(t*(frec_dig(10-i)));
        plot(t,xt,'b');
    end
    
    axis([0 50 -1.1 1.1])
    grid on;
    title(['Ω=',num2str(frec_dig(i))]);
end