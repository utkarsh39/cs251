n=50;
p=0.3;


sample3=1000
sample4=10000
sample5=100000
sample6=1000000


num3=binornd(50,0.3,1,sample3);
num4=binornd(50,0.3,1,sample4);
num5=binornd(50,0.3,1,sample5);
num6=binornd(50,0.3,1,sample6);

file_id1= fopen('bin3.data', 'w');
file_id2= fopen('bin4.data', 'w');
file_id3= fopen('bin5.data', 'w');
file_id4= fopen('bin6.data', 'w');

for i=1:sample3
	pmf(i)=binopdf(num3(i),n,p);
        fprintf(file_id3,'%e\t%e\n',num3(i),pmf(i));
endfor
for i=1:sample4
	pmf(i)=binopdf(num4(i),n,p);
        fprintf(file_id4,'%e\t%e\n',num4(i),pmf(i));
endfor
for i=1:sample5
	pmf(i)=binopdf(num5(i),n,p);
        fprintf(file_id5,'%e\t%e\n',num5(i),pmf(i));
endfor
for i=1:sample6
	pmf(i)=binopdf(num6(i),n,p);
        fprintf(file_id6,'%e\t%e\n',num6(i),pmf(i));
endfor
