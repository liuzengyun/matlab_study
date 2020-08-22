clc,clear,close all
dt=0.01;
t=-3:dt:3;
gt1=[t>=-1]-[t>=1];
gt2=[t>=0]-[t>=2];

dw=0.01;
w=-20:dw:20;
gw1=sig_spec_w(gt1,t,dt,w);
gw2=sig_spec_w(gt2,t,dt,w);

subplot(231)
plot(t,gt1)
title('gt1ʱ���ź�');
grid on

subplot(234)
plot(t,gt2)
title('gt2ʱ���ź�');
grid on

subplot(232)
plot(w,abs(gw1))
title('gt1Ƶ���źŵķ�����');
grid on

subplot(233)
plot(w,angle(gw1))
title('gt1Ƶ���źŵ���λ��');
grid on

subplot(235)
plot(w,abs(gw2))
title('gt2Ƶ���źŵķ�����');
grid on

subplot(236)
plot(w,angle(gw2))
title('gt2Ƶ���źŵ���λ��');
grid on

