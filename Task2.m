yprime=@(t,y)b;
b =0.1:0.9; 
tspan = [2 10];
[t,y] = ode45(yprime,tspan,b);
plot(t,y)
grid on
xlabel('t')
ylabel('y')
title('Solutions of y'' = b-ay’- sin(y), ib = 0.1,...,0.9','interpreter','latex')