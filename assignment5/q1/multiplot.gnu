#set terminal pngcairo size 850,862 enhanced font 'Verdana,20'
#set output 'Probability Distributions.png'
set term postscript eps enhanced color 24

set output 'graph.eps'
set   autoscale                        # scale axes automatically
unset log			       # remove log scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set label "np = 15" at 15,0.102 font ",10"
set label "{/Symbol l} = 15" at 15,0.12 font "Symbol,10"
set label "{/Symbol m} = 15" at 15,0.125 font "Symbol,10"
set title "Probability Distributions"
set ylabel "Probability Mass Function"
set xlabel "k"
 set key  Left title 'Legend' box 3 
plot "normal.data", "bin.data", "poisson.data"
