clc,clear
L=1080*10^(-12);
phi0=2.07*10^(-15);
U0=phi0^2/(4*pi^2*L);
betal=1.6;
phif=0.48*phi0;
C=80*10^(-15);
hbar=6.6260689*10^(-34)/2/pi;
a=-1.5*phi0;
b=1.5*phi0;
N=2000;
dx=(b-a)/N;
S=1/dx^2*(-2*eye(N-1)+diag(ones(1,N-2),1)+diag(ones(1,N-2),-1));
phi=a:dx:b;
u=U0*(0.5*(2*pi*(phi-phif)/phi0).^2-betal*cos(2*pi*phi/phi0));
U=diag(u(2:end-1));
H=-hbar^2/2/C*S+U;
E=eig(H);
[P,D]=eig(H,'nobalance');
subplot(3,3,1)
plot(P(:,1))
ylabel('Phi(phi)');
xlabel('phi');
title('波函数1');%在一幅图中显示
subplot(3,3,2)
plot(P(:,2))
ylabel('Phi(phi)');
xlabel('phi');
title('波函数2');%在一幅图中显示
subplot(3,3,3)
plot(P(:,3))
ylabel('Phi(phi)');
xlabel('phi');
title('波函数3');%在一幅图中显示
subplot(3,3,4)
plot(P(:,4))
ylabel('Phi(phi)');
xlabel('phi');
title('波函数4');%在一幅图中显示
subplot(3,3,5)
plot(P(:,5))
ylabel('Phi(phi)');
xlabel('phi');
title('波函数5');%在一幅图中显示
subplot(3,3,6)
plot(P(:,6))
ylabel('Phi(phi)');
xlabel('phi');
title('波函数6');%在一幅图中显示
subplot(3,3,7)
plot(P(:,7))
ylabel('Phi(phi)');
xlabel('phi');
title('波函数7');%在一幅图中显示
subplot(3,3,8)
plot(P(:,8))
ylabel('Phi(phi)');
xlabel('phi');
title('波函数8');%在一幅图中显示
subplot(3,3,9)
plot(P(:,9))
ylabel('Phi(phi)');
xlabel('phi');
title('波函数9');%在一幅图中显示





