#!/usr/bin/gnuplot

set term postscript eps enhanced 24
set key top left

set xrange [0:50]
#set yrange [0:3]

#unset log
#set nologscale x

set xtics auto
set ytics auto

#set boxwidth 1

#set style fill solid 0.25
set style fill pattern border
#set style fill pattern 2

#set style data histograms
#set style histogram columnstacked


set output 'poiss3.eps'
set title "Poisson Distribution  of sample 1000"
plot 'poiss3.data' u 1:2 title "" w boxes

set output 'poiss4.eps'
set title "Poisson Distribution  of sample 10000"
plot 'poiss4.data' u 1:2 title "" w boxes

set output 'poiss5.eps'
set title "Poisson Distribution  of sample 100000"
plot 'poiss5.data' u 1:2 title "" w boxes

set output 'poiss6.eps'
set title "Poisson Distribution  of sample 1000000"
plot 'poiss6.data' u 1:2 title "" w boxes
