{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}

module StandardEntities.Alu where

import Clash.Prelude
import StandardEntities.Instructions
import CyclicAccurate.CyclicAccurateInterfaces
import StandardEntities.Registers


-- import Lib.Fsm (FSMOutput(FSMOutput))

{-# ANN
  topEntityAlu
  ( Synthesize
      { t_name = "ALU",
        t_inputs =
          [ PortProduct
              "in"
              [ PortName "mcr",
                PortName "pc",
                PortName "mem_a",
                PortName "mem_b",
                PortName "mem_mem_b"
              ]
          ],
        t_output =
          PortProduct
            "out"
            [ PortName "overflow",
              PortName "cmp",
              PortName "data"
            ]
      }
  )
  #-}
topEntityAlu ::
  Signal XilinxSystem (Fsm2Alu 16) ->
  Signal XilinxSystem (Alu2Fsm 16)
topEntityAlu fromFSM = alu <$> fromFSM -- Map alu function to Signal

{-# ANN
  topEntitiyComparisonAlu
  ( Synthesize
      { t_name = "ALU",
        t_inputs =
          [ PortName "clk",
            PortName "rst",
            PortName "en",
            PortName "mcr",
            PortName "pc",
            PortName "mem_a",
            PortName "mem_b",
            PortName "mem_mem_b"
          ],
        t_output =
          PortProduct
            "out"
            [ PortName "overflow",
              PortName "cmp",
              PortName "data"
            ]
      }
  )
  #-}
topEntitiyComparisonAlu ::
  Clock XilinxSystem -> -- For direct comparison we need to decode the instruction and encode cmp and data
  Reset XilinxSystem ->
  Enable XilinxSystem ->
  Signal XilinxSystem (BitVector 8) -> -- Machine Code Register
  Signal XilinxSystem (BitVector 16) -> -- PC
  Signal XilinxSystem (Signed 16) -> -- Memory at address A (in reference 'E')
  Signal XilinxSystem (Signed 16) -> -- Memory at address B (in reference 'D')
  Signal XilinxSystem (Signed 16) -> -- Memory at address MEM_B (in reference 'F')
  (Signal XilinxSystem Bit, Signal XilinxSystem (BitVector 3), Signal XilinxSystem (Signed 16))
topEntitiyComparisonAlu clk rst en mcr_in pc_in mem_a_in mem_b_in mem_mem_b_in =
  (toBit . _overflow <$> result, encodeCompareResult . _cmp <$> result, _data_res <$> result)
  where
    toBit :: Bool -> Bit
    toBit True = high
    toBit False = low
    result = withClockResetEnable clk rst en $ register (Alu2Fsm 0 CMP_NONE False) (alu <$> input_data)
    input_data :: Signal XilinxSystem (Fsm2Alu 16)
    input_data = Fsm2Alu <$> (decodeInstruction <$> mcr_in) <*> (unpack <$> pc_in) <*> mem_a_in <*> mem_b_in <*> (pack <$> mem_mem_b_in)

{-# NOINLINE alu #-}
alu :: forall memSize.(KnownNat memSize) =>
  Fsm2Alu memSize -> Alu2Fsm memSize
alu Fsm2Alu {..} =
  case _mcr of
    SubLeq -> Alu2Fsm data' cmp' overflow'
      where
        data' = _mem_b - _mem_a
        cmp' = cmpleq
        -- msb is most significant bit
        ---- (((not DATAuu(MEMORY_WIDTH-1)) and not MEM_A(MEMORY_WIDTH-1) and MEM_B(MEMORY_WIDTH-1)) or ((DATAuu(MEMORY_WIDTH-1) and (MEM_A(MEMORY_WIDTH-1)) and (not MEM_B(MEMORY_WIDTH-1)))));
        overflow' =
          complement (msb data') .&. complement (msb _mem_a) .&. msb _mem_b
            .|. msb data' .&. msb _mem_a .&. complement (msb _mem_b) == high
    AddLeq -> Alu2Fsm data' cmp' overflow'
      where
        data' = _mem_a + _mem_b
        cmp' = cmpleq
        -- msb is most significant bit
        ---- (((not DATAuu(MEMORY_WIDTH-1)) and MEM_A(MEMORY_WIDTH-1) and MEM_B(MEMORY_WIDTH-1)) or ((DATAuu(MEMORY_WIDTH-1) and (not MEM_A(MEMORY_WIDTH-1)) and (not MEM_B(MEMORY_WIDTH-1)))));
        overflow' =
          complement (msb data') .&. msb _mem_a .&. msb _mem_b
            .|. msb data' .&. complement (msb _mem_a) .&. complement (msb _mem_b) == high
    MovLeq -> Alu2Fsm data' CMP_NONE False
      where
        data' = _mem_a
    ShlLeq -> Alu2Fsm data' CMP_NONE False
      where
        data' = shiftL _mem_b shftAmt
        shftAmt = fromInteger . toInteger $ pack _mem_a
    ShrLeq -> Alu2Fsm data' CMP_NONE False
      where
        data' = shiftR _mem_b shftAmt
        shftAmt = fromInteger . toInteger $ pack _mem_a
    AndLeq -> Alu2Fsm data' CMP_NONE False
      where
        data' = (.&.) _mem_a _mem_b
    OrLeq -> Alu2Fsm data' CMP_NONE False
      where
        data' = (.|.) _mem_a _mem_b
    XorLeq -> Alu2Fsm data' CMP_NONE False
      where
        data' = xor _mem_a _mem_b
    XnorLeq -> Alu2Fsm data' CMP_NONE False
      where
        data' = (xor . complement) _mem_a _mem_b
    Pc -> Alu2Fsm data' CMP_NONE False
      where
        data' = unpack _pc --convert BitVector to Signed
    Mem -> Alu2Fsm data' CMP_NONE False
      where
        data' = _mem_a
    MemR -> Alu2Fsm data' CMP_NONE False
      where
        data' = _mem_mem_b
    PcS -> Alu2Fsm data' CMP_NONE False
      where
        data' = _mem_b
  where
    cmpleq = cmp_signed _mem_a _mem_b
    cmp_signed :: Signed memSize -> Signed memSize -> CompareResult
    cmp_signed a b
      | a > b = CMP_A_BIGGER
      | a == b = CMP_AB_EQUAL
      | otherwise = CMP_B_BIGGER

