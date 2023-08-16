
import Clash.Prelude
import qualified Prelude as P
import qualified Data.Text.IO as TIO
import qualified Data.List as DL

createDomain vSystem{vName="Dom", vPeriod=50000}


add' :: () -> (Unsigned 8, Unsigned 8) -> ((), Unsigned 8)
add' () (s1, s2) = ((), s1 + s2)

addB :: HiddenClockResetEnable Dom => Signal Dom ((Unsigned 8),(Unsigned 8)) -> Signal Dom (Unsigned 8) 
addB = mealy add' ()

mockTopEntity :: HiddenClockResetEnable Dom => Signal Dom (Unsigned 8) -> Signal Dom (Unsigned 8) -> Signal Dom (Unsigned 8)
mockTopEntity s1 s2= result
    where
        result = traceSignal1 "result" result'
        clockedAddB' =   addB 
        result' = clockedAddB' $ bundle (s1',s2')
        s1' = traceSignal1 "s1" s1
        s2' = traceSignal1 "s2" s2

makeVCD :: IO ()
makeVCD = do
    vcd <- dumpVCD (0,200) (withClockResetEnable (clockGen @Dom)  (resetGen @Dom) ( enableGen @Dom) sim) ["s1","s2","result"]
    case vcd of
        Left s  -> error s
        Right d -> TIO.writeFile "mydump.vcd" d

sim :: HiddenClockResetEnable Dom => Signal Dom (Unsigned 8)
sim = mockTopEntity s1 s2
    where
        s1 = register 0 (s1 + 1)
        s2 = register 0 (s2 + 1)

main :: IO ()
main = do
    makeVCD
    return ()


{-
MakeVCD :: IO ()
makeVCD = do
    vcd <- dumpVCD (0,10) (mockTopEntity 0) ["x","result"]
    case vcd of
        Left s  -> error s
        Right d -> TIO.writeFile "mydump.vcd" d

mockTopEntity :: Signal Dom50 (Unsigned 8) -> Signal Dom50 (Unsigned 8)
mockTopEntity x = result
    where
        x' = traceSignal1 "x" x
        result = traceSignal1 "result" $ withClockResetEnable clockGen resetGen enableGen topEntity x'



-}