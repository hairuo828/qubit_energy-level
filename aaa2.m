function dpdt = aaa2(t,p,ib) 
dpdt = zeros(2,1);
dpdt(1) = p(2);
dpdt(2) = ib-sin(p(1))-0.08;
end