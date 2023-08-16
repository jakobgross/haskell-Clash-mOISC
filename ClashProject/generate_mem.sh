#!/bin/bash
# Generate Mem without escaped Identifiers, Ultra Optimized for Xilinx Vivado
# Also Adds edalize Files in case I want to use it later
stack run clash -- src/StandardEntities/Mem.hs -main-is topEntitiyComparisonMem  --vhdl  -fclash-hdlsyn Vivado -fclash-compile-ultra -fclash-no-escaped-identifiers -fclash-clear -fclash-no-cache -fclash-lower-case-basic-identifiers -fclash-edalize -isrc -imem
