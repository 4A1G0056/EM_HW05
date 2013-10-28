clear

A = 1;
T0 = 2;
w0 = 2*pi/T0;
c0 = A/2;
t = -4:0.01:4; 
N = 1111;

S = c0*ones(size(t));
for n = -N:2:N,
  cn = (A/2)*(exp(-i*(n/2)*pi)*sinc(n/2));
  S = S + real(cn*exp(i*n*w0*t));
end

hold;
plot(t,S);
axis('equal',[-4,4,-4,4])