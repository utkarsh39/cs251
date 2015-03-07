#!/usr/bin/awk -f

BEGIN{ FS = "|"; OFS="\t|"; ORS="|  " }   
{print $0}
{tot=0;
 
 for (i=3; i<=NF; i++) 
 {
  tot += $i;
  if(max[i]<$i)
      max[i]=$i
  if(min[i]>$i)
      min[i]=$i
  
 }
  if(max[i]<tot)
      max[i]=tot
  if(min[i]>tot)
      min[i]=tot
 
 printf "%d\n",	tot
}END{
    printf("max\t|     |   ")
    for(i=3;i<=NF+1;i++)
	printf(" %d\t|",max[i])
    printf("\n")
}
