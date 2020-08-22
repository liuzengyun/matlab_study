%带回声的音频信号的产生
clc,clear,close all
[x,fs]=audioread('au.m4a');
tau=0.2;
N=tau*fs;
%延迟量,tau自定
x1=[x(:,1)',zeros(1,N)];
x2=[zeros(1,N),0.6*x(:,1)'];%衰减系数自定
y=x1+x2;
sound(y,fs);
audiowrite('au_1.m4a',y,fs);

r=xcorr(y);
[~,index]=max(r);
[~,fakeN]=max(r(index+fs*0.01:end));
getN=fakeN-1+fs*0.01;
t=1/fs*(0:length(r)-1);
plot(t,r)
title("延迟量为"+getN)