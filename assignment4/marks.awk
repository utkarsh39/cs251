#!/usr/bin/awk -f

BEGIN{ FS = "|"; OFS="\t|"; ORS="|  " }   
{print $0}
{tot=0
 
 for (i=3; i<=NF; i++) 
 {
     if(NR==1)
	 min[i]=$i;
  tot += $i;
  if(max[i]<$i)
      max[i]=$i
  if(min[i]>$i)
      min[i]=$i
  sum[i]+=$i
  sum2[i]+=$i*$i
 }
 if(NR==1)
     min[i]=tot;
  if(max[i]<tot)
      max[i]=tot
  if(min[i]>tot)
      min[i]=tot
  sum[i]+=tot
  sum2[i]+=tot*tot
  printf "%d \n",	tot
}END{
    printf("max\t|     |   ")
    for(i=3;i<=NF+1;i++)
	printf(" %d\t|",max[i])
    printf("\n")
     printf("min\t|     |   ")
    for(i=3;i<=NF+1;i++)
	printf(" %d\t|",min[i])
    printf("\n")
    printf("mean\t|     |   ")
    for(i=3;i<=NF+1;i++)
    {
	mean[i]=sum[i]/NR
	printf(" %.2f\t|",mean[i])
    }
    printf("\n")
}
