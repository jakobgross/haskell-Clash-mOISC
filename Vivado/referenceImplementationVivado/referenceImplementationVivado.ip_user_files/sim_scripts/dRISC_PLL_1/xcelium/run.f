-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../referenceImplementationVivado.gen/sources_1/ip/dRISC_PLL_1/dRISC_PLL_sim_netlist.vhdl" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

