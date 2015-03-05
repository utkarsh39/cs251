#!/bin/bash

while :;
#for i in 1 2 3 4 5
do
  now="$(date +%H:%M:%S)"
  #printf '%s\r' 
  #"$(banner now)"
  h="$(banner $now)"
  
  printf '%s\r\r' "$h";
  
  sleep 1
done
