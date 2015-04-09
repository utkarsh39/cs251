pmf=zeros(1,51);
n=50;
mu=15;
sig=sqrt(10.5);

file_id = fopen('normal.csv', 'w');
for i=0:50
	pmf(i+1)=normpdf(i,mu,sig);

       
fprintf(file_id,'%i,%f\n',i,pmf(i+1));
endfor

