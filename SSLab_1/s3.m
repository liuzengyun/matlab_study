clc,clear,close all

dt=0.01;

t1=-2:dt:2;
t2=-2:dt:2;
f1=1*(t1>=-1 & t1<=0);
f2=1*(t2>=0 & t2<=1);

[R12,tao]=my_xcorr(f1,t1,f2,t2,dt);
xmax = (find(R12==max(R12)) + (t1(1)+t2(1))/dt - 1)*dt;
plot(tao,R12)
grid on;
xlabel('tao');
ylabel('Ryx');
title('yÓëxµÄÑÓ³Ù²îÎª'+(xmax+""));