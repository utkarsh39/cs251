#!/usr/bin/awk -f

BEGIN{ FS = "|"; OFS="|"; ORS="|  " }   
{print $0}
{tot=0;
 for (i=3; i<=NF; i++) 
 {# print $i;
     tot += $i;
 }
 printf "%.3f\n",	tot/(NF-2)
}

