pmf=zeros(1,51);
n=50;
p=0.3;

t=(1-p)^n;
file_id = fopen('bin.csv', 'w');
for i=0:50
	pmf(i+1)=binopdf(i,n,p);
        
       
fprintf(file_id,'%i,%f\n',i,pmf(i+1));
endfor

