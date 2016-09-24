set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"

set xrange [1:5]

f=2.1102

# set key bottom right
set ylabel "\\Large $\\xi^{xx}(\\omega)(10^{24}\\,V^{-2}\\,m^{-1}\\,s^{-1})$]" 

set output "si_gaas-xi.mp"
p "gaas-res/chi1.kk_xx_yy_zz_5216_15-spin_scissor_0_Nc_24" u 1:(f*$3) w l t "GaAs" ,\
  "si-res/chi1.kk_xx_yy_zz_5216_15-spin_scissor_0_Nc_24"   u 1:(f*$3) w l t "Si"   
