clear all;
nt = 2:1024;
out=[];
for m=[2 4 8 16 32 64 128 256 512]
    for Nt=nt
        r=[];
        for Nr=1:Nt
            R=log2fac(Nt)-(log2fac(Nt-Nr)+log2fac(Nr)) + Nr*log2(m);%R=Log2(nCr) +Nr*Log2(m)
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
