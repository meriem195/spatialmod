Nr=1:64;
M=[4 8 16 32 64 128 256];
snr=[0.1 2:2:10];
biterror=zeros((length(M))*(length(Nr))*length(snr),4);
c=1;
for k=1:length(M)
    for j=1:length(Nr)
        for i= 1:length(snr)
            biterror(c,:)=[M(k) Nr(j) snr(i) berSQAMSymbols(snr(i),Nr(j),M(k))];
            c=c+1;
        end
    end
end
csvwrite('ber_dataset.csv',biterror);
% plot(snr,biterror(1,:),'DisplayName','Nr=10');
% hold on
% plot(snr,biterror(2,:),'DisplayName','Nr=23');
% plot(snr,biterror(3,:),'DisplayName','Nr=54');
% hold off
% legend
% title('BER vs SNR');
% xlabel('SNR in dB');
% ylabel('BER');