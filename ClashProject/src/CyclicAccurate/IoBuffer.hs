{-# LANGUAGE TemplateHaskell #-}

module CyclicAccurate.IoBuffer where

import Clash.Annotations.Primitive
import Clash.Prelude as P
import Data.String.Interpolate (i)
import Data.String.Interpolate.Util (unindent)

{-
{-# ANN
  topEntityComparisonIoBuffer
  ( Synthesize
      { t_name = "IoBuffer",
        t_inputs =
          [ PortName "CLK",
            PortName "RST",
            PortName "EN",
            PortName "fsm_in",
            PortName "dir",
            PortName "outside_io"
          ],
        t_output =
          PortName "to_fsm"
      }
  )
  #-}
topEntityComparisonIoBuffer ::
  Clock XilinxSystem ->
  Reset XilinxSystem ->
  Enable XilinxSystem ->
  Signal XilinxSystem (BitVector 8) -> -- Input from FSM
  Signal XilinxSystem (BitVector 8) -> -- Input Direction
  Vec 8 (BiSignalIn 'Floating XilinxSystem 1) -> -- Input from Outside
  (Signal XilinxSystem (BitVector 8), Vec 8 (BiSignalOut 'Floating XilinxSystem 1)) -- (Output to FSM, Output to Outside)
topEntityComparisonIoBuffer clk rst en = withClockResetEnable clk rst en ioBuffer-}



{-# ANN
  topEntityComparisonIoBuffer
  ( Synthesize
      { t_name = "IoBuffer",
        t_inputs =
          [
            PortName "fsm_in",
            PortName "dir",
            PortName "outside_io"
          ],
        t_output =
          PortName "to_fsm"
      }
  )
  #-}
topEntityComparisonIoBuffer :: Signal XilinxSystem (BitVector 8)
  -> Signal XilinxSystem (BitVector 8)
  -> BiSignalIn 'Floating XilinxSystem 8
  -> (Signal XilinxSystem (BitVector 8), BiSignalOut 'Floating XilinxSystem 8)
topEntityComparisonIoBuffer = myBlackBox


{-# NOINLINE myBlackBox #-}
{-# ANN myBlackBox (InlinePrimitive [VHDL] $ unindent [i|
[ { "BlackBox" :
    { "name" : "CyclicAccurate.IoBuffer.myBlackBox",
      "kind" : "Declaration",
      "libraries" : ["UNISIM"],
      "imports" : ["UNISIM.vcomponents.all"],
      "template" :
      "
~GENSYM[myBlackBox][0] : FOR i IN 0 TO 7 GENERATE
  IOBUF_inst : IOBUF
    generic map (DRIVE => 12)
    port map (
      O => ~RESULT(i),     -- Buffer output
      IO => ~ARG[2](i),   -- Buffer inout port (connect directly to top-level port)
      I => ~ARG[0](i),     -- Buffer input
      T => not ~ARG[1](i)      -- 3-state enable input, high=input, low=output
    );
END GENERATE;
"
    }
  }
]
|]) #-}
myBlackBox ::
  Signal dom (BitVector 8) -> -- Input from FSm
  Signal dom (BitVector 8) -> -- Input Direction
  BiSignalIn 'Floating dom 8 -> -- Inout
  (Signal dom (BitVector 8), BiSignalOut 'Floating dom 8) -- (Output to FSM, Inout to Outside)
myBlackBox _ _ = undefined





{-
{-# ANN topEntity
  (Synthesize
    { t_name = "IoBuffer",
      t_inputs =
        [ PortName "CLK",
          PortName "RST",
          PortName "EN",
          PortName "fsm_in",
          PortName "dir",
          PortName "outside_io"
        ],
      t_output =
        PortName "to_fsm"
    }
  )
  #-}
ioBuffer ::
  forall dom regSize.
  (HiddenClockResetEnable dom, KnownNat regSize) =>
  Signal dom (BitVector regSize) -> -- Input from FSM
  Signal dom (BitVector regSize) -> -- Input Direction
  Vec regSize (BiSignalIn 'Floating dom 1) -> -- Input from Outside
  (Signal dom (BitVector regSize), Vec regSize (BiSignalOut 'Floating dom 1)) -- (Output to FSM, Output to Outside)
ioBuffer inp inpD inpO = (outFsm, outO)
  where
    -- Change Signal BitVector to Vec (Signal Bit)
    vecEnableBits = unbundle $ bv2v <$> inpD

    -- Read Bit i only if inpD[i] is high
    readIfBit :: Signal dom Bit -> BiSignalIn 'Floating dom 1 -> Signal dom Bit
    readIfBit rd x = mux (bitToBool <$> rd) (readFromBiSignal x) undefined -- shoud generate "-" in vhdl when Bit should not be read
    readEnabledBits = zipWith readIfBit vecEnableBits inpO

    -- Bundle the read bits from Vec (Signal Bit) to Signal BitVector
    outFsm = v2bv <$> bundle readEnabledBits

    -- Write Bit i only if inpD[i] is low
    -- writeToBiSignal will only write on a Just value
    -- Enable, valuetoWrite, bisignal -> bisignalout
    writeIfBit :: Signal dom Bit -> Signal dom Bit -> BiSignalIn 'Floating dom 1 -> BiSignalOut 'Floating dom 1
    writeIfBit wr dat x = writeToBiSignal x (bitsToMaybe <$> wr <*> dat)

    bitsToMaybe :: Bit -> Bit -> Maybe Bit
    bitsToMaybe b1 b2 = if bitToBool b1 then Just b2 else Nothing

    vecInputBits = unbundle $ bv2v <$> inp
    outO = zipWith3 writeIfBit vecEnableBits vecInputBits inpO
-}
