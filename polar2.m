function h=polar2(z,opt)
if nargin<2
    h=polarplot(angle(z),abs(z));
else
    h=polarplot(angle(z),abs(z),opt);
end