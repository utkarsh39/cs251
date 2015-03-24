set terminal pngcairo size 850,862 enhanced font 'Verdana,20'
set output 'normal.png'
set   autoscale                        # scale axes automatically
set logscale y
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically

set title "Normal Distribution"
set ylabel "Probability Mass Function"
set xlabel "k"
plot "normal.data"