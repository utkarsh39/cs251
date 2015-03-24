set terminal pngcairo size 850,862 enhanced font 'Verdana,20'
set output 'introduction.png'
set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically

set title "Binomial Distribution"
set ylabel "Probability Mass Function"
set xlabel "k"
plot "bin.data"