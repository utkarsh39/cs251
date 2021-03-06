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
set ylabel "Frequency"
set xlabel "x"

set output 'bin3.eps'
set title "Binomial Distribution  of sample 1000"
plot 'bin3.data' u 1:2 title "" w boxes

set output 'bin4.eps'
set title "Binomial Distribution  of sample 10000"
plot 'bin4.data' u 1:2 title "" w boxes

set output 'bin5.eps'
set title "Binomial Distribution  of sample 100000"
plot 'bin5.data' u 1:2 title "" w boxes

set output 'bin6.eps'
set title "Binomial Distribution  of sample 1000000"
plot 'bin6.data' u 1:2 title "" w boxes
