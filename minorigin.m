function deep = minorigin(x0,fmin)

[x0,fmin]=fminbnd(@-cos(x)-bx,-1,4);

end
