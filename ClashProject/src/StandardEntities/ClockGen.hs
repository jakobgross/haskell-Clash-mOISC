module StandardEntities.ClockGen where
import Clash.Annotations.Primitive
import Clash.Prelude as P
    ( ($),
      createDomain,
      vSystem,
      undefined,
      Clock,
      Signal,
      VDomainConfiguration(vName, vPeriod),
      XilinxSystem,
      BitVector, Bit, Resize (resize), and , (.&.))
import Data.String.Interpolate (i)
import Data.String.Interpolate.Util (unindent)
import Clash.Annotations.TopEntity
import qualified Clash.Explicit.Prelude as P

createDomain vSystem{vName="Dom10Khz", vPeriod=10000}
createDomain vSystem{vName="Dom1Mhz", vPeriod=1000000}
createDomain vSystem{vName="Dom50Mhz", vPeriod=50000000}
createDomain vSystem{vName="Dom100Mhz", vPeriod=100000000}


-- TODO change to clockSelect and add clockgen
{-# ANN
  topEntityClockgen
  ( Synthesize
      { t_name = "ClockGen",
        t_inputs =
          [
            PortName "csr_in",
            PortName "cpu_stop_in",
            PortName "clock10khz",
            PortName "clock1mhz",
            PortName "clock50mhz",
            PortName "clock100mhz"
          ],
        t_output =
          PortName "clkOut"
      }
  )
  #-}
topEntityClockgen ::
  Signal XilinxSystem (BitVector 8) ->
  Signal XilinxSystem Bit ->
  Clock Dom10Khz ->
  Clock Dom1Mhz ->
  Clock Dom50Mhz ->
  Clock Dom100Mhz ->
  Clock XilinxSystem
topEntityClockgen = clockGen

{-#NOINLINE clockGen #-}
{-# ANN clockGen (InlinePrimitive [VHDL] $ unindent [i|
[ { "BlackBox" :
    { "name" : "StandardEntities.ClockGen.clockGen",
      "kind" : "Declaration",
      "template" :
      "
~GENSYM[clkSel][0]: process(~ARG[2], ~ARG[3], ~ARG[4], ~ARG[5], ~ARG[0], ~ARG[1])
	begin
		case ~ARG[0] is
			when \\\"00000000\\\" =>
					~RESULT <= ~ARG[2] and not ~ARG[1];

			when \\\"01000000\\\" =>
					~RESULT <= ~ARG[3] and not ~ARG[1];

			when \\\"10000000\\\" =>
					~RESULT <= ~ARG[4] and not ~ARG[1];

			when \\\"11000000\\\" =>
					~RESULT <= ~ARG[5] and not ~ARG[1];

			when others =>
					~RESULT <= ~ARG[1] and not ~ARG[1];
		end case;
end process;
"
    }
  }
]
|]) #-}
clockGen ::
  Signal XilinxSystem (BitVector 8) ->
  Signal XilinxSystem Bit ->
  Clock Dom10Khz ->
  Clock Dom1Mhz ->
  Clock Dom50Mhz ->
  Clock Dom100Mhz ->
  Clock XilinxSystem
clockGen= undefined




