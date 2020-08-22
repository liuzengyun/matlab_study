clc,clear,close all 
dt=0.001; %采样时间间隔，即步长； 
t=-1:dt:1; 
g=1.*((t>=-0.5)-(t>=0.5)); 
%时限信号f1(t)的表示 
dw=0.01; w=-6*pi:dw:6*pi; 
fw=sig_spec_w(g,t,dt,w); 
subplot(211) 
plot(t,g) 
subplot(212) 
plot(w/pi,fw), grid on 
title('矩形脉冲的频谱'); D
xlabel('w/\pi'); ylabel('F(w)'); 
axis([min(w)-0.5,max(w)+0.5,min(fw)-0.5,max(fw)+0.5]);
grid on 