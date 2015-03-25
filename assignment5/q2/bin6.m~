n=50;
p=0.3;
sample6=1000000
num6=binornd(50,0.3,1,sample6);
file_id6= fopen('bin6.data', 'w');
for i=1:sample6
	pmf(i)=binopdf(num6(i),n,p);
        fprintf(file_id6,'%e\t%e\n',num6(i),pmf(i));
endfor
