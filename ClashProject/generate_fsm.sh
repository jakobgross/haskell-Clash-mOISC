#!/bin/bash
# Generate Fsm without escaped Identifiers, Ultra Optimized for Xilinx Vivado
# Also Adds edalize Files in case I want to use it later
stack run clash -- src/CyclicAccurate/Fsm.hs -main-is topEntityFsm  --vhdl  -fclash-hdlsyn Vivado -fclash-compile-ultra -fclash-no-escaped-identifiers -fclash-clear -fclash-no-cache -fclash-lower-case-basic-identifiers -fclash-edalize -isrc
stack run clash -- src/CyclicAccurate/Fsm.hs -main-is topEntitiyComparisonFsm  --vhdl  -fclash-hdlsyn Vivado -fclash-compile-ultra -fclash-no-escaped-identifiers -fclash-clear -fclash-no-cache -fclash-lower-case-basic-identifiers -fclash-edalize -isrc

stack run clash -- src/CyclicMonad/MonadMoisc.hs -main-is monadMoiscTopModuleImplicit  --vhdl  -fclash-hdlsyn Vivado -fclash-compile-ultra -fclash-no-escaped-identifiers -fclash-clear -fclash-no-cache -fclash-lower-case-basic-identifiers -fclash-edalize -isrc
stack run clash -- src/CyclicMonad/MonadMoisc.hs -main-is monadMoiscTopModuleExplicit  --vhdl  -fclash-hdlsyn Vivado -fclash-compile-ultra -fclash-no-escaped-identifiers -fclash-clear -fclash-no-cache -fclash-lower-case-basic-identifiers -fclash-edalize -isrc
