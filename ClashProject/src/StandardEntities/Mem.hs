--{-# LANGUAGE AllowAmbiguousTypes #-}
module StandardEntities.Mem where
import Clash.Prelude
import CyclicAccurate.CyclicAccurateInterfaces


{-# ANN
  topEntitiyComparisonMem
  ( Synthesize
      { t_name = "Mem",
        t_inputs =
          [ PortName "CLK",
            PortName "RST",
            PortName "EN",
            PortName "rden",
            PortName "wren",
            PortName "address",
            PortName "data"

          ],
        t_output = PortName "out_data_q"
      }
  )
  #-}


topEntitiyComparisonMem ::
  Clock XilinxSystem
  -> Reset XilinxSystem
  -> Enable XilinxSystem
  -> Signal XilinxSystem Bit
  -> Signal XilinxSystem Bit
  -> Signal XilinxSystem (BitVector  15)
  -> Signal XilinxSystem (BitVector  16)
  -> Signal XilinxSystem (BitVector  16)
topEntitiyComparisonMem clk rst en rdeni wreni= withClockResetEnable clk rst en $ rdEnwrEnRam "memory.bin" (bitToBool <$> rdeni) (bitToBool <$> wreni)

{-# NOINLINE fsmMem #-}
fsmMem :: forall memSize dom . (KnownNat memSize, HiddenClockResetEnable dom)
  => FilePath
  -> Signal dom (Fsm2Mem memSize)
  -> Signal dom (Mem2Fsm memSize)
fsmMem path fsm2Mem = Mem2Fsm <$> rdEnwrEnRam path (_rden <$> fsm2Mem) (_wren <$> fsm2Mem) (_address <$> fsm2Mem) (_data_wr <$> fsm2Mem)


rdEnwrEnRam :: forall memSize addressSize dom . (KnownNat memSize,KnownNat addressSize, HiddenClockResetEnable dom)
    => FilePath
    -> Signal dom Bool -- ReadEnable
    -> Signal dom Bool -- WriteEnable
    -> Signal dom (BitVector addressSize) -- Address
    -> Signal dom (BitVector memSize) -- write Data
    -> Signal dom (BitVector memSize) -- Value Read at Read Address at previous clock cycle if ReadEnable is True
rdEnwrEnRam file readEnable writeEnable addressi writeData = result
    where
      result = f $ blockRamFilePow2 file (unpack <$> addressi) (convertWriteEnablemaybe <$> writeEnable <*> addressi <*> writeData)
      f a = mux (register False readEnable) a 0 -- First Read is undefined so we replace it with 0, other reads depend on readEnable

convertWriteEnablemaybe ::forall memSize addressSize . (KnownNat memSize,KnownNat addressSize)
  =>  Bool ->  BitVector addressSize -> BitVector memSize-> Maybe (Unsigned addressSize,BitVector memSize)
convertWriteEnablemaybe True wrAddr wrData = Just (unpack wrAddr :: Unsigned addressSize, wrData)
convertWriteEnablemaybe False _ _ = Nothing

