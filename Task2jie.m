clc,clear
Ic=36*10^(-6);
Ib=0.92*Ic;
C=5.8*10^(-12);
phi0=2*10^(-15);
Ej=Ic*phi0/2/pi;
e=1.6*10^(-19);
deltau=2^(0.5)*Ic*phi0*(1-Ib/Ic)^1.5/pi;
hbar=6.626*10^(-34)/(2*pi);
f=@(x)cos(2*pi*x/phi0)*Ej+Ib*x;
xmax=fminbnd(f,-2*10^(-15),-0.5*10^(-15));
f1=@(x)-cos(2*pi*x/phi0)*Ej-Ib*x;
xmin=fminbnd(f,-0.5*10^(-15),0.5*10^(-15));
a=0;
b=0.5*phi0;
N=2000;
dx=(b-a)/N;
S=1/dx^2*(-2*eye(N-1)+diag(ones(1,N-2),1)+diag(ones(1,N-2),-1));
phi=a:dx:b;
u=-cos(2*pi*phi/phi0)*Ej-Ib*phi;
U=diag(u(2:end-1));
H=-hbar^2/2/C*S+U;
E=eig(H);
[P,D]=eig(H,'nobalance');
subplot(2,2,1)
plot(P(:,104))
ylabel('Phi(phi)');
xlabel('phi');
title('波函数1');%在一幅图中显示
subplot(2,2,2)
plot(P(:,105))
ylabel('Phi(phi)');
xlabel('phi');
title('波函数2');%在一幅图中显示
subplot(2,2,3)
plot(P(:,106))
ylabel('Phi(phi)');
xlabel('phi');
title('波函数3');%在一幅图中显示
subplot(2,2,4)
plot(P(:,108))
ylabel('Phi(phi)');
xlabel('phi');
title('波函数4');%在一幅图中显示





