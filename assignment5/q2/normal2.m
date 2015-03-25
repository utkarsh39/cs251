n=50;
mu=15;
sig=sqrt(10.5);


sample3=1000;
sample4=10000;
sample5=100000;
sample6=1000000;


num3=normrnd(mu, sig,sample3,1);
num4=normrnd(mu, sig,sample4,1);
num5=normrnd(mu, sig,sample5,1);
num6=normrnd(mu, sig,sample6,1);

table3=tabulate(num3);
table4=tabulate(num4);
table5=tabulate(num5);
table6=tabulate(num6);

maximum3=round(max(num3));
maximum4=round(max(num4));
maximum5=round(max(num5));
maximum6=round(max(num6));

a3=table3(1:maximum3);
b3=table3(maximum3+1:2*maximum3);
tableab3=[a3;b3];
a4=table4(1:maximum4);
b4=table4(maximum4+1:2*maximum4);
tableab4=[a4;b4];
a5=table5(1:maximum5);
b5=table5(maximum5+1:2*maximum5);
tableab5=[a5;b5];
a6=table6(1:maximum6);
b6=table6(maximum6+1:2*maximum6);
tableab6=[a6;b6];

file_id3= fopen('norm3.data', 'w');
file_id4= fopen('norm4.data', 'w');
file_id5= fopen('norm5.data', 'w');
file_id6= fopen('norm6.data', 'w');

fprintf(file_id3,'%i %i\n',tableab3);
fprintf(file_id4,'%i %i\n',tableab4);
fprintf(file_id5,'%i %i\n',tableab5);
fprintf(file_id6,'%i %i\n',tableab6);
