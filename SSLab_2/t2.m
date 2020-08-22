clc,clear,close all
dt=pi/100;
t=-80:dt:80;
ft=sinc(t/pi);
dw=0.01; w=-pi:dw:pi; 
fw=sig_spec_w(ft,t,dt,w); 
subplot(211) 
plot(t,ft) 
title('Sa(t)�Ľ�ȡ����Ϊ80');
xlabel('t'); ylabel('Sa(t)'); 

subplot(212) 
plot(w,fw), grid on 
title('Sa(t)��Ƶ��');
xlabel('w'); ylabel('F(w)'); 
grid on 