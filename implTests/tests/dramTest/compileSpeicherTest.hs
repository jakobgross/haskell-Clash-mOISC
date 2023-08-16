
import Clash.Prelude
import Clash.XException
import Clash.Prelude.BlockRam.File
import qualified Prelude as P
import qualified Data.Text.IO as TIO
import qualified Data.List as DL

createDomain vSystem{vName="Dom", vPeriod=50000}
produceMemFile = writeFile "memory.bin" (memFile Nothing [0 :: (Unsigned 8) .. 254]) -- create a Mem File with Unsigned 8s 10 to 30

bramFile :: HiddenClockResetEnable Dom
    => Signal Dom (Unsigned 8) -- Read Address
    -> Signal Dom (Unsigned 8) -- Value Read at Read Address at previous clock cycle
bramFile rd = result
    where
        result = f $  unpack <$> blockRamFile d254 "memory.bin" rd (pure Nothing)
        f a = mux (register False (pure True)) a 0 -- First Read is undefined so we replace it with 0

data State = Waiting | ReadRequest
    deriving (Show, Generic, NFDataX)

cycleRam :: HiddenClockResetEnable Dom
    => (State, Unsigned 32, Unsigned 8)  -- (State, Cycles Left, ReadAddr)
    -> (Unsigned 8) -- Values Read By Bram
    -> ((State, Unsigned 32, Unsigned 8), (Unsigned 8,Unsigned 8)) -- (State, Cycles LeftReadAddr),(ReadAddr, Value Read)
cycleRam (s,c,r) v = case s of
    Waiting -> if c>0 then ((Waiting, c-1, r), (r,v)) else ((ReadRequest, 125000000, r), (r,v)) -- read every 200000 cycles 
    ReadRequest -> ((Waiting, c, r'), (r,v)) -- cycle trough adress 0 to 200
        where r' = if r<200 then r+1 else 0

{-# ANN topEntity
  (Synthesize
    { t_name   = "DramTest"
    , t_inputs = [ PortName "CLK"
                 , PortName "RST"
                 , PortName "EN"]
    , t_output = PortName "OUTPUT"
    }) #-}
topEntity :: Clock Dom
  -> Reset Dom
  -> Enable Dom
  -> Signal Dom (Unsigned 8) -- Number Output for LEDs
topEntity clk rst en= output'
    where
        (readAddr, output) = unbundle $ withClockResetEnable clk rst en $ mealy  cycleRam (Waiting, 125000000, 0) dramOutput'
        readAddr' = traceSignal1 "ReadAddress" readAddr
        dramOutput' = traceSignal1 "DramOutput" dramOutput
        output' = traceSignal1 "Output" output
        dramOutput = withClockResetEnable clk rst en $ bramFile  readAddr'

{-   
makeVCD :: IO ()
makeVCD = do
    vcd <- dumpVCD
        (0,1000)
        (withClockResetEnable (clockGen @Dom)  (resetGen @Dom) ( enableGen @Dom) topEntity)
        ["ReadAddress","Output","DramOutput"]
    case vcd of
        Left s  -> error s
        Right d -> TIO.writeFile "compileSpeicherTest.vcd" d -}
