%����������Ƶ�źŵĲ���
clc,clear,close all
[x,fs]=audioread('au.m4a');
tau=0.2;
N=tau*fs;
%�ӳ���,tau�Զ�
x1=[x(:,1)',zeros(1,N)];
x2=[zeros(1,N),0.6*x(:,1)'];%˥��ϵ���Զ�
y=x1+x2;
sound(y,fs);
audiowrite('au_1.m4a',y,fs);

r=xcorr(y);
[~,index]=max(r);
[~,fakeN]=max(r(index+fs*0.01:end));
getN=fakeN-1+fs*0.01;
t=1/fs*(0:length(r)-1);
plot(t,r)
title("�ӳ���Ϊ"+getN)