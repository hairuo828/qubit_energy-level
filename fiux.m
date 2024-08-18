clc,clear
L=1080*10^(-12);
phi0=2*10^(-15);
U0=phi0^2/(4*pi^2*L);
Ic=36*10^(-6);
betal=16;
C=80*10^(-15);                                                                                                                                                                                                                                                                                                                                                         
phif=0.8*phi0;
phi=-10*10^(-16):10^(-18):30*10^(-16);
hbar=6.626*10^(-34)/(2*pi);
U=U0/10^(9)/hbar*(0.5*(2*pi*(phi-phif)/phi0).^2-betal*cos(2*pi*phi/phi0));
plot(phi,U);

