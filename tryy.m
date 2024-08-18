clc,clear
Ic=36*10^(-6);
Ib=0.25*Ic;
C=5.8*10^(-3);
phi0=2*10^(-15);
Ej=Ic*phi0/(2*pi);
L0=phi0/(2*pi*Ic);
deltau=2^(0.5)*Ic*phi0*(1-Ib/Ic)^(1.5)/pi;
phi=-5*10^(-16):10^(-18):15*10^(-16);
omegap0=1/(L0*C)^(0.5);
w=omegap0*(1-(Ib/Ic)^(2))^(0.25);
hbar=6.62607015*10^(-28)/(2*pi);%普朗克常量
A=(C*w/(pi*hbar))^(1/4)%归一化系数A
syms phi
dimV=sqrt(C*w/hbar)*phi;%the dimensionless variableξ=sqrt(m*w/h_)*x;
%********************************************
%the first few Hermite polynormials,Hn(ξ)
H0=1;
H1=2*dimV;
H2=4*dimV^2-2;
H3=8*dimV^3-12*dimV;
%********************************************
V=-cos(sqrt(C*w/hbar)*phi)*Ej-Ib*phi;%势能函数
psi0=A*H0*exp(-(dimV^2)/2);
psi1=A*(1/sqrt(2))*H1*exp(-(dimV^2)/2);
psi2=A*(1/sqrt(8))*H2*exp(-dimV^2/2);
psi3=A*(1/sqrt(48))*H3*exp(-dimV^2/2);
%********************************************
fplot(V,[-5*10^(-16) 15*10^(-16)]);
hold on
fplot(psi0,[-5*10^(-16) 15*10^(-16)]);
fplot(psi1+2,[-5*10^(-16) 15*10^(-16)]);
fplot(psi2+4,[-5*10^(-16) 15*10^(-16)]);
fplot(psi3+6,[-5*10^(-16) 15*10^(-16)]);
ylabel('＼psi');
title('势阱和＼psi 的图像')