
import Clash.Prelude
import Clash.Prelude.BlockRam.File
import qualified Prelude as  P
import qualified Data.Text.IO as TIO
import qualified Data.List as DL
import qualified Data.Maybe as DM
import qualified Data.Maybe as DM

createDomain vSystem{vName="Dom", vPeriod=50000}

produceMemFile = writeFile "memory.bin" (memFile Nothing [0 :: (Unsigned 8) .. 20]) -- create a Mem File with Unsigned 8s 0 to 20


bramFile :: HiddenClockResetEnable Dom
    => Signal Dom (Unsigned 8) -- Read Address
    -> Signal Dom (Maybe (Unsigned 8, BitVector 8)) -- (Write Address, Write Data)
    -> Signal Dom (Unsigned 8) -- Value Read at Read Address at previous clock cycle
bramFile rd wr= unpack <$> blockRamFile d20 "memory.bin" rd wr

topEntity ::
    Clock Dom
    -> Reset Dom
    -> Enable Dom
    -> Signal Dom (Unsigned 8)
    -> Signal Dom (Maybe (Unsigned 8, BitVector 8))
    -> Signal Dom (Unsigned 8)
topEntity clk rst en = withClockResetEnable clk rst en bramFile


readSim :: Signal Dom (Unsigned 8) -> Signal Dom (Unsigned 8)
readSim addr = topEntity clk rst en addr writeData
  where
    clk = (clockGen @Dom)
    rst = (resetGen @Dom)
    en  = ( enableGen @Dom)
    writeData = fromList [(Nothing :: Maybe(Unsigned 8,BitVector 8))]

read10 = DL.tail $ sampleN 4 $ readSim (fromList [0..])