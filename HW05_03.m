clear

t = -4:0.01:4;   
S = 1;
for n = 1:1000
  An = 2 * cos(n*2*pi*t);
  S = S + An;
end

hold;
plot(t,S);
