function dpdt = aaa(t,p,ib) 
ic=36*10^(-6);
c=5.8*10^(-3);
r=10^(5);
phi0=2*10^(-15);
wp0=(2*2.7182818*ic*2*pi/(4.1356676969*10^(-15)*c))^(0.5);
dpdt = zeros(2,1);
dpdt(1) = p(2);dpdt(2) = 2*pi*ic*(ib/ic-sin(p(1))-0.08*p(2));
end
