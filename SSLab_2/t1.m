clc,clear,close all 
dt=0.001; %����ʱ�������������� 
t=-1:dt:1; 
g=1.*((t>=-0.5)-(t>=0.5)); 
%ʱ���ź�f1(t)�ı�ʾ 
dw=0.01; w=-6*pi:dw:6*pi; 
fw=sig_spec_w(g,t,dt,w); 
subplot(211) 
plot(t,g) 
subplot(212) 
plot(w/pi,fw), grid on 
title('���������Ƶ��'); D
xlabel('w/\pi'); ylabel('F(w)'); 
axis([min(w)-0.5,max(w)+0.5,min(fw)-0.5,max(fw)+0.5]);
grid on 