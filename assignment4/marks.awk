#!/usr/bin/awk -f

BEGIN{ FS = "|"; OFS="|"; ORS="  |  " }   
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
  printf "%d \n",tot

}END{
    printf("max\t\b|       |")
    for(i=3;i<=NF;i++)
	printf(" %d\t|",max[i])
    printf(" %d\t ",max[i])
    printf("\n")

     printf("min\t\b|       |")
    for(i=3;i<=NF;i++)
	printf(" %d\t|",min[i])
    printf(" %d\t ",min[i])
    printf("\n")

    printf("mean\t\b|       |")
    for(i=3;i<=NF;i++)
    {
	mean[i]=sum[i]/NR
	printf(" %.2f\t|",mean[i])
    }
    mean[i]=sum[i]/NR
    printf(" %.2f\t",mean[i])
    printf("\n")

    printf("sd\t\b|       |")
    for(i=3;i<=NF;i++)
    {
	sd[i]=sqrt((sum2[i]-mean[i]*sum[i])/NR)
	printf(" %.2f\t|",sd[i])
    }
    sd[i]=sqrt((sum2[i]-mean[i]*sum[i])/NR)
    printf(" %.2f\t",sd[i])
    printf("\n")
}
