set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"
set ytics nomirror
set ytics 
# set yrange [0:4.05]
# set y2tics nomirror 3
# set y2tics
set xrange [1.6:2.1]
# set key samplen 1
set key at graph 0.995, 0.65

g=1e-8
set key top center
set ylabel "\\Large $\\eta^{yyz}(10^{8}\\,A\\,s^{-1}\\,V^{-2})$" 
# set y2label "\\Large $ V (\mu V) $" 

# set output "cdse-eta_vnl.mp"
# p "cdse_res/eta2-vnl.kk_yyz_3234_15-nospin_scissor_0.84_Nc_14" u 1:(g*$2) w l t "sc 0.84"  axis x1y1 ,\
#   "cdse_res/experimental_data" u 1:2 w p ps 1 pt 5 t "experiment" axis x1y2 


# set output "cdse-etaComp1.mp"
# p "cdse-hghsp/eta2.kk_yyz_3234_15-spin_scissor_0.84_Nc_16" u 1:(g*$2) w l t "{\\footnotesize hgh spin}"  axis x1y1 ,\
#   "cdse-hghnsp/eta2.kk_yyz_3234_15-nospin_scissor_0.84_Nc_16" u ($1+0.45):(g*$2) w l lw 2 t "{\\footnotesize hgh nospin}"  axis x1y2 ,\
#   "cdse-pspnc/eta2.kk_yyz_3234_15-nospin_scissor_0.84_Nc_14" u ($1+0.45):(g*$2) w l t "{\\footnotesize pspnc}"  axis x1y1 ,\
#   "cdse-pspnc/eta2-vnl.kk_yyz_3234_15-nospin_scissor_0.84_Nc_14" u ($1+0.45):(g*$2) w l t "{\\footnotesize pspnv vnl}"  axis x1y1 ,\

set xrange [0:5]


set output "cdse-etaComp2.mp"
p "cdse-hghsp/eta2.kk_yyz_3234_15-spin_scissor_0.84_Nc_16" u 1:(g*$2) w l t "{\\footnotesize hgh spin}"  axis x1y1 ,\
  "cdse-hghnsp/eta2.kk_yyz_3234_15-nospin_scissor_0.84_Nc_16" u 1:(g*$2) w l lw 1 t "{\\footnotesize hgh nospin}"  axis x1y1 ,\
  "cdse-pspnc/eta2.kk_yyz_3234_15-nospin_scissor_0.84_Nc_14" u 1:(g*$2) w l t "{\\footnotesize pspnc}"  axis x1y1 ,\
  "cdse-pspnc/eta2-vnl.kk_yyz_3234_15-nospin_scissor_0.84_Nc_14" u 1:(g*$2) w l t "{\\footnotesize pspnv vnl}"  axis x1y1 ,\



cdse-hghsp/eta2.kk_yyz_3234_15-spin_scissor_0.84_Nc_16
cdse-hghnsp/eta2.kk_yyz_3234_15-nospin_scissor_0.84_Nc_16
cdse-pspnc/eta2.kk_yyz_3234_15-nospin_scissor_0.84_Nc_14



