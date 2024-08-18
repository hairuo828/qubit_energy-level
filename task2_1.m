clc,clear
Ic=36*10^(-6);
Ib=0.92*Ic;
C=5.8*10^(-12);
phi0=2*10^(-15);
Ej=Ic*phi0/(2*pi);
L0=phi0/(2*pi*Ic);
deltau=2^(0.5)/pi*Ic*phi0*(1-Ib/Ic)^(1.5);
e=1.60217733*10^(-19);
hbar=6.626*10^(-34)/(2*pi);
phi1=-10*10^(-16):10^(-18):10*10^(-16);
omegap0=(2*pi*Ic/phi0/C)^(0.5);
omegap=omegap0*(1-(Ib/Ic)^(2))^(0.25);
phi=-5*10^(-16):10^(-18):15*10^(-16);
u=-cos(2*pi*phi/phi0)*Ej-Ib*phi;
plot(phi,u)
omega01=omegap*(1-5*hbar*omegap/36/deltau);
omega12=omegap*(1-5*hbar*omegap/18/deltau);
y1=-1.68008481108146e-20;   
y2=-1.67916548050041e-20;
y3=-1.67824873996752e-20;
y4=-1.67733461879832e-20;
plot(phi,y1)
(y2-y1)/hbar;
(y3-y2)/hbar;





