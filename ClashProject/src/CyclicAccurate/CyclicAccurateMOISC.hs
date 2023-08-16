module CyclicAccurate.CyclicAccurateMOISC where
import Clash.Prelude
import CyclicAccurate.Fsm (twoCycleFsm)
import CyclicAccurate.CyclicAccurateInterfaces
import StandardEntities.Mem
import CyclicAccurate.IoController
import CyclicAccurate.IoBuffer
import StandardEntities.Alu
import qualified StandardEntities.ClockGen as Clk

{-# NOINLINE topEntity #-}
{-# ANN topEntity
     Synthesize
      { t_name = "mOISC",
        t_inputs = [
            PortName "Clk10Khz",
            PortName "Clk1Mhz",
            PortName "Clk50Mhz",
            PortName "Clk100Mhz",
            PortName "RST",
            PortName "En",
            PortName "IO"],
        t_output = PortName "IO"
        } #-}
topEntity :: Clock Clk.Dom10Khz
    -> Clock Clk.Dom1Mhz
    -> Clock Clk.Dom50Mhz
    -> Clock Clk.Dom100Mhz
    -> Reset XilinxSystem
    -> Enable XilinxSystem
    -> BiSignalIn 'Floating XilinxSystem 8 -- in
    -> BiSignalOut 'Floating XilinxSystem 8 -- (enable_out, out)
topEntity = mosicSimpleFsm "memory.bin"

topEntitySimulation :: FilePath
    -> Clock XilinxSystem
    -> Reset XilinxSystem
    -> Enable XilinxSystem
    -> Signal XilinxSystem (BitVector 8) -- input
    -> Signal XilinxSystem(
        BitVector 8, -- output direction
        BitVector 8, -- output
        BitVector 8, -- clock speed
        Bit)            -- halt

topEntitySimulation filePath clock rst en input = bundle (output_dir, output, csr_out, halt)
    where
        output_dir = _oe . _iobufOutput <$> fsm_result
        output = _dataout . _iobufOutput <$> fsm_result
        csr_out = _clockspeed . _clockSpeedOutput <$> fsm_result
        halt = boolToBit . _cpu_stop_status . _computerStatusOutput <$> fsm_result
        fsm_result = withClockResetEnable clock rst en $ twoCycleFsm fsm_in :: Signal XilinxSystem (FsmOutput 16 8)
        fsm_in = FsmInput <$> fromMem <*> fromIoCtr <*> fromAlu <*> (Iobuf2Fsm <$> input) :: Signal XilinxSystem (FsmInput 16 8)
        fromMem = withClockResetEnable clock rst en $ fsmMem filePath (_memOutput <$> fsm_result)
        fromIoCtr = withClockResetEnable clock rst en $ ioController (_ioctrOutput <$> fsm_result) (IoBuf2Ioctr <$> input)
        fromAlu = withClockResetEnable clock rst en $ alu <$> (_aluOutput <$> fsm_result)



testN :: [Char] -> Int -> String
testN filePath n = showX $ remdups  $ sampleN  n $ topEntitySimulation filePath (clockGen @XilinxSystem)  (resetGen @XilinxSystem) (enableGen @XilinxSystem) (pure 0)

remdups :: [(
        BitVector 8, -- output direction
        BitVector 8, -- output
        BitVector 8, -- clock speed
        Bit)] -> [(
        BitVector 8, -- output direction
        BitVector 8, -- output
        BitVector 8, -- clock speed
        Bit)]
remdups [] = []
remdups [x] = [x]
remdups (x1:x2:xs)
    | x1==x2 = remdups (x2:xs)
    | otherwise = x1:remdups (x2:xs)

isBoring :: (
        BitVector 8, -- output direction
        BitVector 8, -- output
        BitVector 8, -- clock speed
        Bit) -> Bool
isBoring (dir,out,csr,halt) = out /= 0


{-# NOINLINE mosicSimpleFsm #-}
mosicSimpleFsm :: FilePath
    -> Clock Clk.Dom10Khz
    -> Clock Clk.Dom1Mhz
    -> Clock Clk.Dom50Mhz
    -> Clock Clk.Dom100Mhz
    -> Reset XilinxSystem
    -> Enable XilinxSystem
    -> BiSignalIn 'Floating XilinxSystem 8 -- in
    -> BiSignalOut 'Floating XilinxSystem 8 -- (enable_out, out)
mosicSimpleFsm path c1 c2 c3 c4 rst en inputIoBuf = iobufOut
    where
        clock = Clk.topEntityClockgen clock_speed halted c1 c2 c3 c4
        clock_speed = _clockspeed . _clockSpeedOutput <$> fsm_result
        halted = boolToBit . _cpu_stop_status . _computerStatusOutput <$> fsm_result
        fsm2IoBuf = _iobufOutput <$> fsm_result
        (iobuf2fsm,iobufOut) = myBlackBox (_dataout <$> fsm2IoBuf) (_oe <$> fsm2IoBuf) inputIoBuf
        fsm_result = withClockResetEnable clock rst en $ twoCycleFsm fsm_in :: Signal XilinxSystem (FsmOutput 16 8)
        fsm_in = FsmInput <$> fromMem <*> fromIoCtr <*> fromAlu <*> fromIoBuf :: Signal XilinxSystem (FsmInput 16 8)
        fromMem = withClockResetEnable clock rst en $ fsmMem path (_memOutput <$> fsm_result)
        fromIoCtr = withClockResetEnable clock rst en $ ioController (_ioctrOutput <$> fsm_result) (IoBuf2Ioctr <$> iobuf2fsm)
        fromIoBuf = Iobuf2Fsm <$> iobuf2fsm
        fromAlu = withClockResetEnable clock rst en $ alu <$> (_aluOutput <$> fsm_result)


counter :: (Bool, Int ) -> Int -> ((Bool, Int), Maybe Int)
counter (write, prevread) i = ((write', prevread'), output)
    where
        output    = if write then Just (succ prevread) else Nothing
        prevread' = if write then prevread else i
        write' = not write


