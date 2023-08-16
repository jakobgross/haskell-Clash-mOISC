module Example.StartInClash where
import Clash.Prelude
import GHC.IO.Exception (IOErrorType(SystemError))

adder :: Signal System (Signed 8) -> Signal System (Signed 8) -> Signal System (Signed 8)
adder a b = (+) <$> a <*> b

add0to9 :: [Signed 8]
add0to9 = sampleN 10 $ adder (fromList [0..9]) (fromList [0..9])

counter :: HiddenClockResetEnable dom => Signal dom (Unsigned 3)
counter = register 0 ((+1) <$> counter)

sampleCounter :: [Unsigned 3]
sampleCounter = sampleN 12 $ withClockResetEnable (clockGen @System) (resetGen @System) (enableGen @System)  counter

topEntity :: Clock System -> Reset System -> Enable System -> Signal System (Unsigned 3)
topEntity clk rst en = withClockResetEnable clk rst en counter

topEntity2:: Clock System -> Reset System -> Enable System -> Signal System (Signed 8) -> Signal System (Signed 8) -> Signal System (Signed 8)
topEntity2 clk rst en a b = withClockResetEnable clk rst en (adder a b)
