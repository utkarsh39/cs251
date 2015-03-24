pmf=zeros(1,51);
n=50;
l=15;

t=e^(-15);
file_id = fopen('poisson.data', 'w');
for i=0:50
pmf(i+1)=t;
t=(t*l)/(i+1);
       
fprintf(file_id,'%i\t%e\n',i,pmf(i+1));
endfor

