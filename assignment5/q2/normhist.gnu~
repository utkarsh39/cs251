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


set output 'norm3.eps'
set title "Normal Distribution  of sample 1000"
plot 'norm3.data' u 1:2 title "" w boxes

set output 'norm4.eps'
set title "Normal Distribution  of sample 10000"
plot 'norm4.data' u 1:2 title "" w boxes

set output 'norm5.eps'
set title "Normal Distribution  of sample 100000"
plot 'norm5.data' u 1:2 title "" w boxes

set output 'norm6.eps'
set title "Normal Distribution  of sample 1000000"
plot 'norm6.data' u 1:2 title "" w boxes
