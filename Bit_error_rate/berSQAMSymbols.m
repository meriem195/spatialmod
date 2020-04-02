%this function is only for m=4,m=8,m=16,m=32,m=64,m=128,m=256
function BER=berSQAMSymbols(snrdB,Nr,M)
if M==4
    qam = [-1+1i -1-1i 1+1i 1-1i];
elseif M==8
    qam = [-1+1i -3-1i -1+1i -1-1i 3+1i 3-1i 1+1i 1-1i];
elseif M==16
    qam = [-3+3i -3+1i -3-3i -3-1i -1+3i -1+1i -1-3i -1-1i 3+3i 3+1i 3-3i 3-1i 1+3i 1+1i 1-3i 1-1i];
elseif M==32
    qam = [-3+7i -1+7i 3+7i 1+7i -3+5i -1+5i 3+5i 1+5i -3+1i -1+1i 3+1i 1+1i -3+3i -1+3i 3+3i 1+3i -3-7i -1-7i 3-7i 1-7i -3-5i -1-5i 3-5i 1-5i -3-1i -1-1i 3-1i 1-1i -3-3i -1-3i 3-3i 1-3i];
elseif M==64
    qam=[-7+7i -7+5i -7+1i -7+3i -7-7i -7-5i -7-1i -7-3i -5+7i -5+5i -5+1i -5+3i -5-7i -5-5i -5-1i -5-3i -1+7i -1+5i -1+1i -1+3i -1-7i -1-5i -1-1i -1-3i -3+7i -3+5i -3+1i -3+3i -3-7i -3-5i -3-1i -3-3i 7+7i 7+5i 7+1i 7+3i 7-7i 7-5i 7-1i 7-3i 5+7i 5+5i 5+1i 5+3i 5-7i 5-5i 5-1i 5-3i 1+7i 1+5i 1+1i 1+3i 1-7i 1-5i 1-1i 1-3i 3+7i 3+5i 3+1i 3+3i 3-7i 3-5i 3-1i 3-3i];
elseif M==128
    qam=[-15+7i -15+5i -15+1i -15+3i -15-7i -15-5i -15-1i -15-3i -13+7i -13+5i -13+1i -13+3i -13-7i -13-5i -13-1i -13-3i -9+7i -9+5i -9+1i -9+3i -9-7i -9-5i -9-1i -9-3i -11+7i -11+5i -11+1i -11+3i -11-7i -11-5i -11-1i -11-3i -1+7i -1+5i -1+1i -1+3i -1-7i -1-5i -1-1i -1-3i -3+7i -3+5i -3+1i -3+3i -3-7i -3-5i -3-1i -3-3i -7+7i -7+5i -7+1i -7+3i -7-7i -7-5i -7-1i -7-3i -5+7i -5+5i -5+1i -5+3i -5-7i -5-5i -5-1i -5-3i 15+7i 15+5i 15+1i 15+3i 15-7i 15-5i 15-1i 15-3i 13+7i 13+5i 13+1i 13+3i 13-7i 13-5i 13-1i 13-3i 9+7i 9+5i 9+1i 9+3i 9-7i 9-5i 9-1i 9-3i 11+7i 11+5i 11+1i 11+3i 11-7i 11-5i 11-1i 11-3i 1+7i 1+5i 1+1i 1+3i 1-7i 1-5i 1-1i 1-3i 3+7i 3+5i 3+1i 3+3i 3-7i 3-5i 3-1i 3-3i 7+7i 7+5i 7+1i 7+3i 7-7i 7-5i 7-1i 7-3i 5+7i 5+5i 5+1i 5+3i 5-7i 5-5i 5-1i 5-3i];
elseif M==256
    qam=[-15+15i -15+13i -15+9i -15+11i -15+1i -15+3i -15+7i -15+5i -15-15i -15-13i -15-9i -15-11i -15-1i -15-3i -15-7i -15-5i -13+15i -13+13i -13+9i -13+11i -13+1i -13+3i -13+7i -13+5i -13-15i -13-13i -13-9i -13-11i -13-1i -13-3i -13-7i -13-5i -9+15i -9+13i -9+9i -9+11i -9+1i -9+3i -9+7i -9+5i -9-15i -9-13i -9-9i -9-11i -9-1i -9-3i -9-7i -9-5i -11+15i -11+13i -11+9i -11+11i -11+1i -11+3i -11+7i -11+5i -11-15i -11-13i -11-9i -11-11i -11-1i -11-3i -11-7i -11-5i -1+15i -1+13i -1+9i -1+11i -1+1i -1+3i -1+7i -1+5i -1-15i -1-13i -1-9i -1-11i -1-1i -1-3i -1-7i -1-5i -3+15i -3+13i -3+9i -3+11i -3+1i -3+3i -3+7i -3+5i -3-15i -3-13i -3-9i -3-11i -3-1i -3-3i -3-7i -3-5i -7+15i -7+13i -7+9i -7+11i -7+1i -7+3i -7+7i -7+5i -7-15i -7-13i -7-9i -7-11i -7-1i -7-3i -7-7i -7-5i -5+15i -5+13i -5+9i -5+11i -5+1i -5+3i -5+7i -5+5i -5-15i -5-13i -5-9i -5-11i -5-1i -5-3i -5-7i -5-5i 15+15i 15+13i 15+9i 15+11i 15+1i 15+3i 15+7i 15+5i 15-15i 15-13i 15-9i 15-11i 15-1i 15-3i 15-7i 15-5i 13+15i 13+13i 13+9i 13+11i 13+1i 13+3i 13+7i 13+5i 13-15i 13-13i 13-9i 13-11i 13-1i 13-3i 13-7i 13-5i 9+15i 9+13i 9+9i 9+11i 9+1i 9+3i 9+7i 9+5i 9-15i 9-13i 9-9i 9-11i 9-1i 9-3i 9-7i 9-5i 11+15i 11+13i 11+9i 11+11i 11+1i 11+3i 11+7i 11+5i 11-15i 11-13i 11-9i 11-11i 11-1i 11-3i 11-7i 11-5i 1+15i 1+13i 1+9i 1+11i 1+1i 1+3i 1+7i 1+5i 1-15i 1-13i  1-9i 1-11i 1-1i 1-3i 1-7i 1-5i 3+15i 3+13i 3+9i 3+11i 3+1i 3+3i 3+7i 3+5i 3-15i 3-13i 3-9i 3-11i 3-1i 3-3i 3-7i 3-5i 7+15i 7+13i 7+9i 7+11i 7+1i 7+3i 7+7i 7+5i 7-15i 7-13i 7-9i 7-11i 7-1i 7-3i 7-7i 7-5i 5+15i 5+13i 5+9i 5+11i 5+1i 5+3i 5+7i 5+5i 5-15i 5-13i 5-9i 5-11i 5-1i 5-3i 5-7i 5-5i];
end
Tx=64;
Rx=Tx;
Spr=(mean(abs(qam)))^2;
SNR=10^(snrdB/10);
sigmaN=Spr/SNR;
ber=zeros([1,1000]);
for k=1:length(ber)
    Xm=qam(randi(M,[Nr,1]));
    X=zeros([Tx 1]);
    xs=randperm(Tx);
    Xs=sort(xs(1:Nr));
    X(Xs)=Xm;
    H = sqrt(2)*randn(Rx,Tx) + 1i*sqrt(2)*randn(Rx,Tx);
    Y=H*X + sqrt(sigmaN)*randn([Rx,1]);
    Xcap=pinv(H)*Y;                                %MSME
    %Xcap=((H'*H+(1/SNR)*eye(length(H'*H)))\H')*Y;  %Bayes Regularization
    %Xcap=H'*Y;                                     %matched filter
    [~,thd]=maxk(abs(Xcap),Nr);
    Xsc=sort(thd);
    Xmcap=transpose(qamdem(Xcap(Xsc),M));
    be=0;
    if Xs~=Xsc
        be=be+1;
    end
    be=be+sum(Xm~=Xmcap,2);
    ber(k)=be/(Nr+1);
end
BER=mean(ber);
end
%this function is only for m=4,m=8,m=16,m=32,m=64,m=128,m=256
function y=qamdem(x,M)
re = quant((real(x)+1),2)-1;
im = (quant((imag(x)+1),2)-1);
if M==256
    re(re>15)=15;
    re(re<-15)=-15;
    im(im>15)=15;
    im(im<-15)=-15;
elseif M==128
    re(re>15)=15;
    re(re<-15)=-15;
    im(im>7)=7;
    im(im<-7)=-7;
elseif M==64
    re(re>7)=7;
    re(re<-7)=-7;
    im(im>7)=7;
    im(im<-7)=-7;
elseif M==32
    re(re>7)=7;
    re(re<-7)=-7;
    im(im>3)=3;
    im(im<-3)=-3;
elseif M==16
    re(re>3)=3;
    re(re<-3)=-3;
    im(im>3)=3;
    im(im<-3)=-3;
elseif M==8
    re(re>3)=3;
    re(re<-3)=-3;
    im(im>1)=1;
    im(im<-1)=-1;
elseif M==4
    re(re>1)=1;
    re(re<-1)=-1;
    im(im>1)=1;
    im(im<-1)=-1;
end
y=re+im*1i;
end