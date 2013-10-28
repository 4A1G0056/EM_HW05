clear

A = 1;
T0 = 4;
w0 = 2*pi/T0; 
A0 = 0;
t = -4:0.01:4;
N = 1111;

S = A0*ones(size(t));
for n = 1:2:N,
  An = 8/(n*n*pi*pi);
  S = S + An*cos(n*w0*t);
end

hold;
plot(t,S);
axis('equal',[-4,4,-4,4])