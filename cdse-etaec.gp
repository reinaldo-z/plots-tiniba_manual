set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"
set ytics nomirror
set ytics 
set yrange [0:4]
set y2tics nomirror 3
set y2tics
set xrange [1.6:2.1]

g=1e-8
set key bottom right
set ylabel "\\Large $\\eta^{yyz}(10^{8}\\,A\\,s^{-1}\\,V^{-2})$" 

set output "cdse-eta.mp"
p "cdse-res/eta_ec.sm_0.05_yyz_3234_15-spin_scissor_0.88_Nc_16" u 1:(g*$2) w l t "sc 0.88"  axis x1y1 ,\
  "cdse-res/eta_ec.sm_0.05_yyz_3234_15-spin_scissor_0.88_Nc_16" u ($1-0.04):(g*$2) w l t "sc 0.84"  axis x1y1 ,\
  # "cdse-res/experimental_data" u 1:2 w p ps 1 pt 5 t "experiment" axis x1y2 
