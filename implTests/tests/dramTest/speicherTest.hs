
-- Goal: Create a BlockRam with a size of 5 Unsigned 8-bit values initalized to 0
-- Cycle through the Block-Ram, read the value and write it back incremented by 1

import Clash.Prelude
import Clash.Prelude.BlockRam.File
import qualified Prelude as  P
import qualified Data.Text.IO as TIO
import qualified Data.List as DL

createDomain vSystem{vName="Dom", vPeriod=50000}
-- interface for Reading and writing ram
bram5 :: HiddenClockResetEnable Dom
    => Signal Dom (Unsigned 8) -- Read Address
    -> Signal Dom (Maybe (Unsigned 8, BitVector 256)) -- (Write Address, Write Data)
    -> Signal Dom (BitVector 256) -- Value Read at Read Address at previous clock cycle
bram5 = blockRamPow2 (replicate d256 0)

topEntity :: HiddenClockResetEnable Dom
    => Signal Dom (Unsigned 8) -- Read Address
    -> Signal Dom (Maybe (Unsigned 8, BitVector 256)) -- (Write Address, Write Data)
    -> Signal Dom (BitVector 8) -- Value Read at Read Address at previous clock cycle
topEntity a b = slice d7 d0 <$> (bram5 a b)

topEntity' :: HiddenClockResetEnable Dom => Signal Dom (BitVector 256)
topEntity' = bram5 a b
    where
        a = register 0 (a+1)
        b = register Nothing (down <$>  b)

        down Nothing = Just( 20::Unsigned 8,  1 ::BitVector 256)
        down (Just (x,y)) = Just(x-1::Unsigned 8, y+1 ::BitVector 256)

{-
testRW = sampleN 10 $ topEntity 0 (fromList [(Just (0::Unsigned 8, 1::BitVector 8)) -- write and read take 1 cycle
                                           , (Just (0::Unsigned 8, 50::BitVector 8))
                                           , (Just (0::Unsigned 8, 9::BitVector 8))
                                           , (Just (0::Unsigned 8, -1::BitVector 8))
                                           ,(Nothing :: Maybe(Unsigned 8,BitVector 8))
                                           ,(Nothing :: Maybe(Unsigned 8,BitVector 8))
                                           ,(Nothing :: Maybe(Unsigned 8,BitVector 8))
                                           ,(Nothing :: Maybe(Unsigned 8,BitVector 8))
                                           ])



mockTopEntity = withClockResetEnable clk rst en topEntity'
    where
        clk = clockGen @Dom
        rst = resetGen @Dom
        en =  enableGen @Dom
        -}



