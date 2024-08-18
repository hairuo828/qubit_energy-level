function dpdt = aaa(t,p,b)
ic=36*10^(-6);
c=5.8*10^(-3);
r=10^(5);
phi0=2*10^(-15);                                                                                                                  
dpdt = zeros(2,1);
dpdt(1) = p(2);
dpdt(2) = 2*3.1416*ic*(b/ic-sin(p(1))-phi0*p(2)/(2*3.1416*ic*r))/(c*phi0);
end