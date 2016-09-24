set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"

set xrange [0:5]

f=0.08987

# set key bottom right
set ylabel '\Large ${\cal D}^z$' 

set output "si_gaas-Dz.mp"
p '<paste gaas-res/zeta.kk_xyz_5216_15-spin_scissor_0_Nc_24 gaas-res/chi1.kk_xx_yy_zz_5216_15-spin_scissor_0_Nc_24' u 1:(f*$2/($5+.0001)) w l t 'GaAs',\
  '<paste si-res/zeta.kk_xyz_5216_15-spin_scissor_0_Nc_24 si-res/chi1.kk_xx_yy_zz_5216_15-spin_scissor_0_Nc_24' u 1:(f*$2/($5+.0001)) w l t 'Si'
