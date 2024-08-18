
ib=0.1
tspan=[0 5];
y0 = [0.100167 0];
[t,p] = ode45(@(t,p) aaa2(t,p,ib), tspan, y0)
plot(t,p(:,1),'-o',t,p(:,2),'-o')


