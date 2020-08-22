function fw = sig_spec_w(ft,t,dt,w)

for n=1:length(w)
    sum=0;
    for k=1:length(t)
        sum=sum+ft(k)*exp(-1j*w(n)*t(k))*dt;
    end
    fw(n)=sum;
end
fw=fw.*dt;
end

