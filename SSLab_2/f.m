clc,clear,close all
dt=0.01;
t=-1:dt:1;
gt=1*[t>=-1/2&t<=1/2];
w=-6*pi:0.01:6*pi;
for p=1:length(w)
    Gw(p)=0;%ÿ��wȡֵ��ͬ,��Ӧ�Ļ��ֲ�ͬ
    for k=1:length(t)
        Gw(p)=Gw(p)+gt(k).*exp(-j*w(p)*t(k))*dt;%ע��:.*���������Ԫ�ذ��ն�Ӧλ�����49%
    end
end
%˫��forѭ������Gw,��ѭ����w,��ѭ����t plot(w,Gw),grid;index=find(w>08Gw<1e-4);%�ҳ�ʹ��Gw=0�ĵ�.

plot(w,Gw)
grid on