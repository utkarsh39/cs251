n=50;
p=0.3;


sample3=1000;
sample4=10000;
sample5=100000;
sample6=1000000;


num3=binornd(50,0.3,sample3,1);
num4=binornd(50,0.3,sample4,1);
num5=binornd(50,0.3,sample5,1);
num6=binornd(50,0.3,sample6,1);
table3=tabulate(num3);
table4=tabulate(num4);
table5=tabulate(num5);
table6=tabulate(num6);

maximum3=max(num3);
maximum4=max(num4);
maximum5=max(num5);
maximum6=max(num6);

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


file_id3= fopen('bin3.data', 'w');
file_id4= fopen('bin4.data', 'w');
file_id5= fopen('bin5.data', 'w');
file_id6= fopen('bin6.data', 'w');


fprintf(file_id3,'%i %i\n',tableab3);
fprintf(file_id4,'%i %i\n',tableab4);
fprintf(file_id5,'%i %i\n',tableab5);
fprintf(file_id6,'%i %i\n',tableab6);
