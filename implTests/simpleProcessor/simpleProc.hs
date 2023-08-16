--{-# LANGUAGE GeneralizedNewtypeDeriving #-}
-- The name of our module
{-# LANGUAGE RankNTypes #-}
module CPU1 where


-- CLaSH-provided hardware stuff
import Clash.Prelude
import Clash.Explicit.Testbench
import Clash.Sized.Unsigned (Unsigned)
import Clash.Sized.Vector (Vec((:>), Nil), 
        (!!), replace, repeat, (++))
import Clash.Class.Resize (zeroExtend)
import Clash.Sized.BitVector (BitVector, (++#), Bit)
import Clash.Class.BitPack (pack, unpack)
import Clash.Promoted.Nat.Literals as Nat
import Clash.Signal (Signal, register, sample)
import qualified Data.Text.IO as TIO

-- Plain old Haskell stuff
import Prelude ((+), (-), (*), (==), ($), (.),
    filter, fmap, error,
    Show,  Bool(True,False), Maybe(Just,Nothing))
import qualified Prelude as P
import Control.Arrow (Arrow(first, second))

-- Registers
data Register = 
      R1 
    | R2 
    | R3 
    | R4 
    deriving (Show, Generic, NFDataX)

-- wrapper type for 64-bit memory addresses
newtype Ptr = Ptr (Unsigned 64)  deriving (Show, Generic, NFDataX)
-- wrapper type for 64-bit words
-- newtype (Unsigned 64) = (Unsigned 64) (Unsigned 64) deriving Show


-- Making Output an instance of NFData allows CLaSH 
--  to force full evaluation during testing.
newtype Output = Output (Unsigned 64) deriving (Show, Generic, NFDataX)


data Instruction
    = LoadIm Register (Unsigned 56) -- Load immediate
    | Add Register Register Register -- Add two Registers and put result in third
    | Sub Register Register Register -- Subtract two Registers and put result in third
    | Mul Register Register Register -- Multiply two Registers and put result in third
    | Load Register Register -- Load value from memory into register
    | Store Register Register -- Store value from register into memory
    | Jmp Register  -- Jump to address in register
    | JmpZ Register Register -- Jump to address in register, if second register is zero
    | Out Register -- Output value in register to output port
    | Halt -- Halt the CPU
    deriving (Show, Generic, NFDataX)

data CPUActivity
    = LoadingInstruction
    | ExecutingInstruction Instruction
    | ReadingMemory Ptr Register
    | WritingMemory Ptr (Unsigned 64)
    | Outputting Output
    | Halted
    deriving (Generic, NFDataX)


data Registers = Registers
    { r1 :: Unsigned 64
    , r2 :: Unsigned 64
    , r3 :: Unsigned 64
    , r4 :: Unsigned 64
    , pc :: Ptr -- Program Counter
    } deriving (Show, Generic, NFDataX)

data CPUState = CPUState CPUActivity Registers deriving ( Generic, NFDataX)

newtype RAM = RAM (Vec 64 (Unsigned 64)) deriving (Show, Generic, NFDataX)

readRegister :: Registers -> Register -> Unsigned 64
readRegister (Registers reg1 reg2 reg3 reg4 _) reg = case reg of
    R1 -> reg1
    R2 -> reg2
    R3 -> reg3
    R4 -> reg4

writeRegister :: Registers -> Register -> Unsigned 64 -> Registers
writeRegister regs reg word = case reg of
    R1 -> regs {r1 = word}
    R2 -> regs {r2 = word}
    R3 -> regs {r3 = word}
    R4 -> regs {r4 = word}

readRam :: RAM -> Ptr -> Unsigned 64
readRam (RAM content) (Ptr addr) = content !! addr

readRam2:: forall n. (KnownNat n) => RAM -> BitVector n -> BitVector n
readRam2 (RAM content) addr = content !! addr

writeRAM :: RAM -> Ptr -> Unsigned 64 -> RAM
writeRAM (RAM content) (Ptr addr) word = RAM (replace addr word content)

writeRam2 :: forall n. (KnownNat n) => RAM -> BitVector n -> Bitvector n -> RAM
writeRam2 (RAM content) addr word = RAM (replace addr word content)

increment :: Ptr -> Ptr
increment (Ptr addr) = Ptr (addr + 1)

encodeRegister :: Register -> BitVector 4
encodeRegister r = case r of
    R1 -> 0
    R2 -> 1
    R3 -> 2
    R4 -> 3

decodeRegister :: BitVector 4 -> Register
decodeRegister r = case r of
    0 -> R1
    1 -> R2
    2 -> R3
    3 -> R4
    _ -> error "Invalid register"

-- The first 4 bits are the instruction ID ("tag")
-- The second, third, fourth 4 bits are register numbers. We could use 2 bits (as we only have 4 registers)
-- The last 56 bits are the immediate value, in the case of `LoadIm`
encodeInstruction :: Instruction -> Unsigned 64
encodeInstruction instr =  unpack $ case instr of
    LoadIm r1 v     -> tag 0 ++# encodeRegister r1 ++# pack v
    Add    r1 r2 r3 -> tag 1 ++# encodeRegister r1 ++# encodeRegister r2 ++# encodeRegister r3 ++# 0
    Sub    r1 r2 r3 -> tag 2 ++# encodeRegister r1 ++# encodeRegister r2 ++# encodeRegister r3 ++# 0
    Mul    r1 r2 r3 -> tag 3 ++# encodeRegister r1 ++# encodeRegister r2 ++# encodeRegister r3 ++# 0
    Load   r1 r2    -> tag 4 ++# encodeRegister r1 ++# encodeRegister r2 ++# 0
    Store  r1 r2    -> tag 5 ++# encodeRegister r1 ++# encodeRegister r2 ++# 0
    Jmp    r1       -> tag 6 ++# encodeRegister r1 ++# 0
    JmpZ   r1 r2    -> tag 7 ++# encodeRegister r1 ++# encodeRegister r2 ++# 0
    Out    r1       -> tag 8 ++# encodeRegister r1 ++# 0
    Halt            -> tag 9 ++# 0
    where 
        tag :: BitVector 4 -> BitVector 4
        tag t = pack t ++# 0

decodeInstruction :: Unsigned 64 -> Instruction
decodeInstruction  instr = case tag of
    0 -> LoadIm r1 v
    1 -> Add    r1 r2 r3
    2 -> Sub    r1 r2 r3
    3 -> Mul    r1 r2 r3
    4 -> Load   r1 r2
    5 -> Store  r1 r2
    6 -> Jmp    r1
    7 -> JmpZ   r1 r2
    8 -> Out    r1
    9 -> Halt
    _ -> error "Invalid instruction"
    where
        tag = slice Nat.d63 Nat.d60 instr
        r1   = decodeRegister $ slice Nat.d59 Nat.d56 instr
        r2   = decodeRegister $ slice Nat.d55 Nat.d52 instr
        r3   = decodeRegister $ slice Nat.d51 Nat.d48 instr
        v   = unpack $ slice Nat.d55 Nat.d0  instr



cpuCycle :: (CPUState,RAM) -> (CPUState,RAM)
cpuCycle (CPUState activity registers, ram) = case activity of

    LoadingInstruction -> (CPUState activity' register', ram)
        where
            loadedWord = readRam ram (pc registers)
            activity' = ExecutingInstruction( decodeInstruction loadedWord)
            register' = registers {pc = increment (pc registers)}


    ExecutingInstruction instr -> case instr of

        LoadIm r v -> (CPUState LoadingInstruction  registers', ram)
            where
                registers' = writeRegister registers r  (zeroExtend v)

        Add a b r -> (CPUState LoadingInstruction  registers', ram)
            where
                registers' = writeRegister registers r (readRegister registers a + readRegister registers b)

        Sub a b r -> (CPUState LoadingInstruction  registers', ram)
            where
                registers' = writeRegister registers r (readRegister registers a - readRegister registers b)

        Mul a b r -> (CPUState LoadingInstruction  registers', ram)
            where
                registers' = writeRegister registers r (readRegister registers a * readRegister registers b)

        Load valReg ptrReg -> (CPUState (ReadingMemory ptr valReg) registers, ram)
            where 
                ptr = Ptr (readRegister registers ptrReg)

        Store valReg ptrReg -> (CPUState (WritingMemory ptr val) registers, ram)
            where 
                ptr = Ptr (readRegister registers ptrReg)
                val = readRegister registers valReg

        Jmp dest -> (CPUState LoadingInstruction registers', ram)
            where
                registers' = registers {pc = Ptr (readRegister registers dest)}
        
        JmpZ r dest -> (CPUState LoadingInstruction registers', ram)
            where
                registers' = if readRegister registers r == 0
                    then registers {pc = Ptr (readRegister registers dest)}
                    else registers
        
        Out r -> (CPUState (Outputting out) registers, ram)
            where
                out = Output (readRegister registers r)

        Halt -> (CPUState Halted registers, ram)

    ReadingMemory ptr reg -> (CPUState LoadingInstruction registers', ram)
        where
            val = readRam ram ptr
            registers' = writeRegister registers reg val

    WritingMemory ptr val -> (CPUState LoadingInstruction registers, ram')
        where
            ram' = writeRAM ram ptr val
    
    -- TODO add output functionality
    Outputting _ -> (CPUState LoadingInstruction registers, ram)

    Halted -> (CPUState Halted registers, ram)

    
isHalted :: CPUState -> Bool
isHalted (CPUState activity _) = case activity of
    Halted -> True
    _ -> False

output :: CPUState -> Maybe Output
output (CPUState (Outputting output) _) = Just output
output _ = Nothing

createDomain vSystem{vName="Dom50", vPeriod=50000}
cpuHardware ::  HiddenClockResetEnable Dom50=> CPUState -> RAM -> Signal Dom50 (Bool, Maybe Output)
cpuHardware initialCPUState initialRAM = outputSignal
    where
        systemState = register (initialCPUState, initialRAM) systemState'
        systemState' = fmap cpuCycle systemState
        getOutput :: (CPUState, RAM) -> (Bool, Maybe Output)
        getOutput (state, _) = (isHalted state, output state)
        outputSignal = fmap getOutput systemState'

defaultCPUState :: CPUState
defaultCPUState = CPUState LoadingInstruction (Registers 0 0 0 0 (Ptr 0))

--- TESTING ---
simpleProgram :: Vec 7 Instruction
simpleProgram = 
    LoadIm R1 7 :>
    LoadIm R2 8 :>
    LoadIm R3 9 :>
    Out R1      :>
    Out R2      :>
    Out R3      :>
    Halt        :>
    Nil

loopProgram :: Vec 9 Instruction
loopProgram = 
    LoadIm R1 1  :> -- Constant 1
    LoadIm R2 5  :> -- Loop counter
    LoadIm R3 4  :> -- Jump destination ("Out R2")
    LoadIm R4 8  :> -- Jump destination ("Halt")
    Out R2       :> -- Output the current counter value
    JmpZ R2 R4   :> -- Halt if R2 == 0
    Sub R2 R1 R2 :> -- Decrement R2
    Jmp R3       :> -- Go to the start of the loop
    Halt         :>
    Nil

fibProgram :: Vec 27 Instruction
fibProgram
    =  LoadIm R1 0          -- Store the first 2 terms (0,1) in RAM
    :> LoadIm R2 0x20
    :> Store R1 R2
    :> LoadIm R1 1
    :> LoadIm R2 0x21
    :> Store R1 R2
    :> LoadIm R3 0          -- Loop counter
    :> LoadIm R2 0x20       -- Start of loop. Load fibonacci array base address
    :> Add R2 R3 R2         -- Get the address of the current first term (R2 + R3)
    :> Load R4 R2           -- Load the first item into R4
    :> LoadIm R1 1 
    :> Add R2 R1 R2         -- Get the address of the second item (R2 + R3 + 1)
    :> Load R1 R2           -- Load the second item into R1
    :> Add R4 R1 R4         -- Add up the first and second items into R4
    :> LoadIm R1 1
    :> Add R2 R1 R2         -- Get the address of the new item (R2 + R3 + 2)
    :> Store R4 R2          -- Store the new item
    :> Out R4               -- Print the new item
    :> LoadIm R1 30
    :> Sub R1 R3 R1         -- R1 = 19 - loop count
    :> LoadIm R2 haltAddr   -- R2 = Halt address
    :> JmpZ R1 R2           -- Halt if R1 == 0 (i.e. if loop count is 19)
    :> LoadIm R1 1
    :> Add R3 R1 R3         -- Increment loop counter
    :> LoadIm R2 loopStart
    :> Jmp R2               -- Go back to loop start
    :> Halt
    :> Nil
    where
    haltAddr = 26
    loopStart = 7

simpleProgramMem :: RAM
simpleProgramMem = RAM (fmap encodeInstruction simpleProgram ++ repeat 0)

loopProgramMem :: RAM
loopProgramMem = RAM ( fmap encodeInstruction loopProgram ++ repeat 0)

fibProgramMem :: RAM
fibProgramMem = RAM ( fmap encodeInstruction fibProgram ++ repeat 0)

topEntity :: Clock Dom50
    -> Reset Dom50
    -> Enable Dom50
    -> Signal Dom50 (Bool, Maybe Output)
topEntity = exposeClockResetEnable $ cpuHardware  defaultCPUState  fibProgramMem

simpleProgramCPU :: Clock Dom50
    -> Reset Dom50
    -> Enable Dom50
    -> Signal Dom50 (Bool, Maybe Output)
simpleProgramCPU  = exposeClockResetEnable $ cpuHardware  defaultCPUState  simpleProgramMem

loopProgramCPU ::Clock Dom50
    -> Reset Dom50
    -> Enable Dom50
    -> Signal Dom50 (Bool, Maybe Output)
loopProgramCPU = exposeClockResetEnable $ cpuHardware defaultCPUState loopProgramMem

fibProgramCPU :: Clock Dom50
    -> Reset Dom50
    -> Enable Dom50
    -> Signal Dom50 (Bool, Maybe Output)
fibProgramCPU = exposeClockResetEnable $ cpuHardware defaultCPUState fibProgramMem



isBoring :: (Bool, Maybe Output) -> Bool
isBoring (False, Nothing) = True
isBoring _                = False


writeVCD
    :: NFDataX a
    => FilePath
    -> (Int, Int)
    -> Signal dom a
    -> [String]
    -> IO ()
writeVCD fname slice signal traceNames = do
    vcd <- dumpVCD slice signal traceNames
    case vcd of
        Left s  -> error s
        Right d -> TIO.writeFile fname d
    putStrLn $ "Written file " P.++ fname

writeVCD'
    :: NFDataX a
    => FilePath
    -> Signal dom a
    -> [String]
    -> IO ()
writeVCD' = flip writeVCD (0,10)


testSimpleProgramCPU = rslt'
    where
        clk' = (clockGen @Dom50)
        rst' = (resetGen @Dom50)
        en' =  (enableGen @Dom50)
        rslt =  (simpleProgramCPU clk'  rst' en')
        
        (rslt1,rslt2) = unbundle rslt 
        rslt1' = traceSignal1 "halt" rslt1
        --rslt2' = traceSignal1 "out" rslt2
        rslt' = bundle (rslt1',rslt2)
makeSimpleProgrammVCD:: IO () 
makeSimpleProgrammVCD = writeVCD' "simpleProgram.vcd" testSimpleProgramCPU ["rslt"] 

testLoopProgramCPU = filter (not . isBoring) $ sampleN 40 $ loopProgramCPU (clockGen @Dom50)  (resetGen @Dom50) ( enableGen @Dom50)
testFibProgramCPU =  filter (not . isBoring) $ sampleN 1350 $ fibProgramCPU (clockGen @Dom50)  (resetGen @Dom50) ( enableGen @Dom50)

counter :: HiddenClockResetEnable dom
    => Signal dom (BitVector 8)
counter = result
    where
        result = register 0 $ fmap (+) counter 1
