clc,clear,close all
[x,fs]=audioread('au.m4a');
Ryy=xcorr(x);
plot(Ryy);
grid on;
title('�����������');

[u,v]=max(Ryy);
R1=Ryy;
R1(v-100:v+100,1)=0;%ȥ���м������ֵ
[u1,v1]=max(R1);
N2=abs(v-v1);%��������غ����������
title(['�����ӳ���Ϊ',num2str(N2)]);