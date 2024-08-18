function h=logmag(f,z,opt,shift)
if nargin<3
    h=plot(f,20*log10(abs(z)));
elseif nargin==3
    h=plot(f,20*log10(abs(z)),opt);
else
    h=plot(f,shift+20*log10(abs(z)),opt);
end
xlim([min(f(:,1)) max(f(:,end))])
xlabel('Frequency[GHz]');
ylabel('S_{21}^2[dB]');
grid on