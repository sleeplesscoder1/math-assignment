l = 1;
t = 1;
c = 1;
dx = 0.1;
dt = 0.1;
t= 0:dt:1;
k = (c * dt/dx)^2;

for i=1:11
    x(i) = (i-1)*dx;
end

for i=1:11
    u(i,1) =2* x(i)*(1-x(i));
end
u(:,2) = u(:,1);

for j=2:10
    for i=2:10
        u1(i,j+1) = k * (u(i+1,j)-2*u(i,j)+u(i-1,j))+ 2*u(i,j) - u(i,j-1);
    end
    u1(1,:) = 0;
    u1(11,:) = 0;
    u= u1;
end

plot(t, u1)


 
