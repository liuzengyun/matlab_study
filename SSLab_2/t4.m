clc,clear,close all
dt=0.01;
t=-3:dt:3;
gt1=1*[t>=-1&t<=1];
gt2=1*[t>=0&t<=2];
dw=0.01;
w=-10:dw:10; 
gw1=sig_spec_w(gt1,t,dt,w); 
gw2=sig_spec_w(gt2,t,dt,w); 
subplot(321) 
plot(t,gt1) ,grid on

subplot(322) 
plot(t,gt2) ,grid on

subplot(323) 
plot(w,abs(gw1)) ,grid on

subplot(324) 
plot(w,abs(gw2)) ,grid on

subplot(325) 
plot(w,angle(gw1)) ,grid on

subplot(326) 
plot(w,angle(gw2)) ,grid on

