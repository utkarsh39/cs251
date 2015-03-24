pmf=zeros(1,51);
n=50;
p=0.3;

t=(1-p)^n;
file_id = fopen('bin.data', 'w');
for i=0:49
	pmf(i+1)=t;
        t=t*((n-i-1)*p)/((i+2)*(1-p));
       
fprintf(file_id,'%i\t%e\n',i,pmf(i+1));
endfor

