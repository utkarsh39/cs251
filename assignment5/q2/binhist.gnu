#!/usr/bin/gnuplot

set term postscript eps enhanced 24

set output 'histogram.eps'

set title "Histograms"

set key top left

set xrange [0:50]
#set yrange [0:3]

unset log
#set nologscale x

#unset xtics
#unset ytics

set xtic auto
set ytic auto

set boxwidth 1

set style fill solid 0.25
set style fill pattern border
set style fill pattern 2

set style data histograms
set style histogram columnstacked

#plot 'data' u 1:2 title "Func" w boxes
#plot 'data' u 1:2 title "Square" w boxes lt 2 fs pattern 1, 'data' u 1:3 title "Cube" w boxes lt 3 fs pattern 2
plot 'binu.data' #u 1:2 # u 1:3 title "Cube" w boxes, 'data' u 1:2 title "Square" w boxes

