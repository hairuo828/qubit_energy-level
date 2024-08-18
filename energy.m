clc,clear
Ic=36*10^(-6);
Ib=0.25*Ic;
C=5.8*10^(-3);
phi0=2*10^(-15);
Ej=Ic*phi0/(2*pi);
L0=phi0/(2*pi*Ic);
hbar=1/2/pi;
omegap0=1/(L0*C)^(0.5);
omegap=omegap0*(1-(Ib/Ic)^(2))^(0.25);
phi=-5*10^(-16):10^(-18):15*10^(-16);
E=(C*omegap/(pi*hbar))^(0.25)*exp(-0.5*phi.^2*(C*omegap/hbar));
plot(phi,E,'-.')

