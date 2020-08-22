function [R12,tao] = my_xcorr(f1,t1,f2,t2,dt)
%这是第二题
t2f=fliplr(-t2);
f2f=fliplr(f2);
tao=(t1(1)+t2f(1)):dt:(t1(end)+t2f(end));
R12=conv(f1,f2f)*dt;
end

