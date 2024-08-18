clc,clear
Ic=36*10^(-6);
Ib=0.25*Ic;
C=5.8*10^(-3);
phi0=2*10^(-15);
Ej=Ic*phi0/(2*pi);
L0=phi0/(2*pi*Ic);
hbar=1;
omegap0=1/(L0*C)^(0.5);
%*****************************************
C=1;
%电容
w=1;
%Wp
h_=1;%普朗克常量，为了作图方便，被放大了
A=(C*w/(pi*h_))^(1/4);%归一化系数A
syms x
dimV=sqrt(C*w/h_)*x;%ξ=sqrt(m*w/h_)*x;
%********************************************
H0=1;
H1=2*dimV;
H2=4*dimV^2-2;
H3=8*dimV^3-12*dimV;
%********************************************
V=-3.6*cos(sqrt(C*w/h_)*x/1.5)-0.25*x;%势能函数
psi0=0.7*A*H0*exp(-(dimV^2)/2);
psi1=0.7*A*(1/sqrt(2))*H1*exp(-(dimV^2)/2);
psi2=0.7*A*(1/sqrt(8))*H2*exp(-dimV^2/2);
psi3=-0.7*A*(1/sqrt(48))*H3*exp(-dimV^2/2);
%********************************************
fplot(V,'-k');
hold on
fplot(psi0-2.5,'-.');fplot(-2.5);
fplot(psi1-1,'-.');fplot(-1);
fplot(psi2+0.3,'-.');fplot(0.3);
fplot(psi3+1.5,'-.');fplot(1.5);
axis([-5 5 0 7]);ylabel('U');xlabel('phi');
title('势阱、波函数与能级的图像');%在一幅图中显示