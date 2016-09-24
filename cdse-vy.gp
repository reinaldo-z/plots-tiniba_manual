set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"
# set ytics nomirror
# set ytics 
# set yrange [0:4]
# set y2tics nomirror 3
# set y2tics
set xrange [1.6:2.1]

f=2.958e-9
set key bottom right
set ylabel '\Large Swarm velocity $v^y$ (Km/s)' 

set output "cdse-vy.mp"
p '<paste cdse-res/eta2.kk_yyz_3234_15-spin_scissor_0.88_Nc_16 cdse-res/chi1.kk_xx_yy_zz_3234_15-spin_scissor_0.88_Nc_16' u 1:(f*$2/($5+$7+.0001)) w l t "sc 0.88" ,\
  '<paste cdse-res/eta2.kk_yyz_3234_15-spin_scissor_0.88_Nc_16 cdse-res/chi1.kk_xx_yy_zz_3234_15-spin_scissor_0.88_Nc_16' u ($1-0.04):(f*$2/($5+$7+.0001)) w l t "sc 0.84"
