l = 1;
t = 1;
c = 1;
dx = 0.1;
dt = 0.1;
k = (c * dt/dx)^2;
for i=1:11
    x(i) = (i-1)*dx;
end

for i=1:11
    u(i) =2* x(i)*(1-x(i));
end

for j=2:10
    for i=2:10
        u1(i) = (k * (u(i+1)-2*u(i)+u(i-1))) + 2*u(i) - u(j-1);
    end
    u1(1) = 0;
    u1(11) = 0;
    u = u1;
end
plot(x,u1)
xlabel("x")
ylabel("t")
title("displacement vs time graph at t=1s")

 
