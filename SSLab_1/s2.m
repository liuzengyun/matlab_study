clc,clear,close all
dt=0.01;
xt=-2:dt:2;
x=1*[xt>=-1&xt<=0];
yt=-2:dt:2;
y=1*[yt>=0&yt<=1];
[R12,tao]=my_xcorr(y,yt,x,xt,dt);
plot(tao,R12),grid
xlabel('tao');ylabel('Rxy');


[m,index]=max(R12);
a=num2str(tao(index));
title(['ÑÓ³ÙÎª',a]);