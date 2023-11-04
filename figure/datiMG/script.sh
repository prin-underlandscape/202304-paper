#!/bin/bash -e
gnuplot <<- EOF
  set xlabel "Year"
  set ylabel "Number of people"
  set yrange [5000:7000]
  set terminal png font "Times-New-Roman,20"
  set output "population.png"
  plot "population.txt" using 1:2 title "Population" lw 3 lt 3 with lines
EOF

gnuplot <<- EOF
  set xlabel "Year"
  set ylabel "Number of people"
  set yrange [0:25000]
  set style fill solid 0.5
  set boxwidth 0.3
  set terminal png font "Times-New-Roman,20"
  set output "tourism.png"
  plot 'tourism.txt' using (\$1-0.17):2 title "Arrivals" lw 3 lt 4 with boxes,\
  'tourism.txt' using (\$1+0.17):3 title "Presence" lw 3 lt 3 with boxes,\
  'tourism.txt' using 1:4 title "Residents" lw 3 lt 1 with lines
EOF
