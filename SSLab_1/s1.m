clc,clear,close all
dt=0.01;

t1=-3:dt:3;
t2=-3:dt:4;
f1=2*[t1>=-1&t1<=2];
f2=(3/4)*[t2>=0&t2<=3];

t=t1(1)+t2(1):dt:t1(end)+t2(end);
ft=conv(f1,f2);
ftxz=ft*dt;
plot(t,ftxz);
xlabel('t');
ylabel('ft');