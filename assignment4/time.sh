#!/bin/bash

while :;

do
  clear
  now="$(date +%H:%M:%S)"
  h="$(banner $now)"
  
  printf '%s\r\r' "$h";
  
  sleep 1
done
