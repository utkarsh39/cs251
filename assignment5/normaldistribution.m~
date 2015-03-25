pmf=zeros(1,51);
n=50;
mu=15;
sig=sqrt(10.5);

con=1/(sig*sqrt(2*pi));
file_id = fopen('normal.data', 'w');
for i=0:50
	pmf(i+1)=e^-( (i-mu)^2 )/( 2 * (sig^2) );
pmf(i+1)=con*pmf(i+1);
       
fprintf(file_id,'%i\t%e\n',i,pmf(i+1));
endfor

