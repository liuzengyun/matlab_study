clc,clear,close all
dt=0.01;
t=-1:dt:1;
gt=1*[t>=-1/2&t<=1/2];
w=-6*pi:0.01:6*pi;
for p=1:length(w)
    Gw(p)=0;%每次w取值不同,对应的积分不同
    for k=1:length(t)
        Gw(p)=Gw(p)+gt(k).*exp(-j*w(p)*t(k))*dt;%注意:.*代表矩阵中元素按照对应位置相称49%
    end
end
%双层for循环计算Gw,外循环对w,内循环对t plot(w,Gw),grid;index=find(w>08Gw<1e-4);%找出使得Gw=0的点.

plot(w,Gw)
grid on