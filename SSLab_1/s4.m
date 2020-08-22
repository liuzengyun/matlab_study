clc,clear,close all
[x,fs]=audioread('au.m4a');
Ryy=xcorr(x);
plot(Ryy);
grid on;
title('带回声的相关');

[u,v]=max(Ryy);
R1=Ryy;
R1(v-100:v+100,1)=0;%去掉中间的最大峰值
[u1,v1]=max(R1);
N2=abs(v-v1);%利用自相关函数求出回声
title(['估计延迟量为',num2str(N2)]);