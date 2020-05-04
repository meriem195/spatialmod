clear all;
nt = 2:1024;
out=[];
for m=[2 4 8 16 32 64 128 256 512]
    for Nt=nt
        r=[];
        for Nr=1:Nt
            R=sum(log2(1:nt))-(sum(log2(1:(nt-i)))+sum(log2(1:i))) + i*log2(m);%R=Log2(nCr) +Nr*Log2(m)
            r = [r;R];
        end
        [k,nr]=max(r);
        out=vertcat(out,[m Nt nr]);
    end
end
csvwrite('dataset.csv',out);

function lg2f=log2fac(n)
lg2f=0;
for i=1:n
   lg2f=lg2f+log2(n); 
end
end
