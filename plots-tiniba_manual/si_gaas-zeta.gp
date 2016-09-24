set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"

set xrange [0:5]

# set key bottom right
set ylabel "\\Large $\\zeta^{xyz}(\\omega)(10^{-11}\\,J\\,m^{-1}\\,V^{-2})$]" 


set output "si_gaas-zeta.mp"
p "gaas-res/zeta.kk_xyz_5216_15-spin_scissor_0_Nc_24" u 1:2 w l t "GaAs" ,\
  "si-res/zeta.kk_xyz_5216_15-spin_scissor_0_Nc_24"   u 1:2 w l t "Si"   
