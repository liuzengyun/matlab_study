clc,clear,close all
dt=pi/100;
t=-40:dt:40;
st=sinc(t/pi).*cos(4*t)+sinc(t/pi).*cos(8*t);

dw=0.01; w=-10:dw:10; 
fw=sig_spec_w(st,t,dt,w); 
subplot(211) 
plot(t,st),grid on
title('时域两路复用信号');
xlabel('t'); ylabel('f(t)'); 

subplot(212) 
plot(w,fw), grid on 
title('频域两路复用信号的幅度谱');
xlabel('w'); ylabel('F(w)'); 
