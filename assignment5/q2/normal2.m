n=50;
mu=15;
sig=sqrt(10.5);


sample3=1000
sample4=10000
sample5=100000
sample6=1000000


num3=normrnd(mu, sig,sample3);
num4=normrnd(mu, sig,sample4);
num5=normrnd(mu, sig,sample5);
num6=normrnd(mu, sig,sample6);

file_id3= fopen('norm3.data', 'w');
file_id4= fopen('norm4.data', 'w');
file_id5= fopen('norm5.data', 'w');
file_id6= fopen('norm6.data', 'w');

for i=1:sample3 
	pmf(i)=normpdf(num3(i),mu, sig);
        fprintf(file_id3,'%e\t%e\n',num3(i),pmf(i));
endfor
for i=1:sample4
	pmf(i)=normpdf(num4(i),mu, sig);
        fprintf(file_id4,'%e\t%e\n',num4(i),pmf(i));
endfor
for i=1:sample5
	pmf(i)=normpdf(num5(i),mu, sig);
        fprintf(file_id5,'%e\t%e\n',num5(i),pmf(i));
endfor
for i=1:sample6
	pmf(i)=normpdf(num6(i),mu, sig);
        fprintf(file_id6,'%e\t%e\n',num6(i),pmf(i));
endfor
