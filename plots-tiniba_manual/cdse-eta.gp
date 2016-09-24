set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"
set ytics nomirror
set ytics 
# set yrange [0:4.05]
set y2tics nomirror 3
set y2tics
set xrange [1.6:2.1]
set key samplen 1
set key at graph 0.995, 0.65

g=1e-8
set key right center
set ylabel "\\Large $\\eta^{yyz}(10^{8}\\,A\\,s^{-1}\\,V^{-2})$" 
set y2label "\\Large $ V (\mu V) $" 

# set output "cdse-eta_vnl.mp"
# p "cdse_res/eta2-vnl.kk_yyz_3234_15-nospin_scissor_0.84_Nc_14" u 1:(g*$2) w l t "sc 0.84"  axis x1y1 ,\
#   "cdse_res/experimental_data" u 1:2 w p ps 1 pt 5 t "experiment" axis x1y2 


set output "cdse-eta.mp"
p "cdse-res/eta2.kk_yyz_3234_15-spin_scissor_0.84_Nc_16" u 1:(g*$2) w l t "{\\footnotesize spin sc 0.84}"  axis x1y1 ,\
  "cdse-res/eta2.kk_yyz_3234_15-nospin_scissor_0.84_Nc_14" u ($1+0.45):(g*$2) w l t "{\\footnotesize nospin sc 1.29}"  axis x1y1 ,\
  "cdse-res/eta2-vnl.kk_yyz_3234_15-nospin_scissor_0.84_Nc_14" u ($1+0.45):(g*$2) w l t "{\\footnotesize vnl sc 1.29}"  axis x1y1 ,\
  "cdse-res/experimental_data" u 1:2 w p ps 1 pt 5 t "{\\footnotesize experiment}" axis x1y2 


# eta2.kk_yyz_3234_15-spin_scissor_0.84_Nc_16
# eta2.kk_yyz_3234_15-nospin_scissor_0.84_Nc_14
# eta2-vnl.kk_yyz_3234_15-nospin_scissor_0.84_Nc_14
