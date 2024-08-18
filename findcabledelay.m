function tau=findcabledelay(f,z)
subplot(2,1,1);
plot(f,phase(z));
xlabel('f[GHz]')
ylabel('Phase')
subplot(2,1,2);
plot(f,gradient(phase(z))./gradient(f)/2/pi);
hold on;
tau=mean(gradient(phase(z))./gradient(f)/2/pi);
plot(f,tau,'r--');
xlabel('f[GHz]')
ylabel('tau[ns]')
title('tau=num2str(tau)')