{-# LANGUAGE RecordWildCards, LambdaCase, FlexibleInstances #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE FlexibleContexts #-}
module JoinedState.JoinedStateFSM where
import Clash.Prelude
import StandardEntities.Barbies

import Control.Lens hiding (Index, assign)
import Barbies.TH
import Control.Monad ( when )



data Mode
  = OISC
  | CISC
  deriving (Show, Generic,Eq, NFDataX)
-- TODO exec mit parameter
-- z.B. Init mit WriteBackRegister

type RegWord = BitVector 8
type DataWord = BitVector 16
type Ptr = BitVector 16





data MemPort= MemPort{
  _wr_addr :: Maybe Ptr,
  _wr_data :: Maybe DataWord
} deriving (Generic, Show, Eq, NFDataX)

makeLenses ''MemPort

declareBareB [d|
  data CPUIn = CPUIn
    {
      io_in :: RegWord,
      mem_in_a :: DataWord,
      mem_in_b :: DataWord
    }
  |]


declareBareB [d|
  data CPUOut= CPUOut
    {
      _io_out :: RegWord,
      _mem_out_a :: MemPort,
      _mem_out_b :: MemPort,
      _halted :: Bool
    } |]

makeLenses ''CPUOut

data Instruction -- MOV is implemented in FSM for 0 <= b < 8
  = SubLeq -- SUBtract and jump if Less or EQual
  | MovLeq -- MOVe and jump if Less or EQual
  | AddLeq -- ADD and jump if Less or EQual
  | ShlLeq -- SHift Left and jump if Less or EQual
  | ShrLeq -- SHift Right and jump if Less or EQual
  | OrLeq -- bitwise OR and jump if Less or EQual
  | AndLeq -- bitwise AND and jump if Less or EQual
  | XorLeq -- bitwise XOR and jump if Less or EQual
  | XnorLeq -- bitwise XNOR and jump if Less or EQual
  | Pc --Program Counter save
  | Mem -- MEMory double depth addressing
  | MemR -- MEMort Reverse double depth addressing
  | PcS -- Program Counter Set
  deriving (Show,Eq, Generic, NFDataX)

bootstrapRegisters = 8

decodeInstruction ::  RegWord -> Instruction
decodeInstruction = \case
  0b0000000011111111 -> SubLeq
  0b0000000011101110 -> MovLeq
  0b0000000000110011 -> Pc
  0b0000000000100010 -> Mem
  0b0000000000010001 -> MemR
  0b0000000000000000 -> PcS
  0b0000000011001100 -> AddLeq
  0b0000000010011001 -> ShlLeq
  0b0000000010001000 -> ShrLeq
  0b0000000001110111 -> OrLeq
  0b0000000001100110 -> AndLeq
  0b0000000001010101 -> XorLeq
  0b0000000001000100 -> XnorLeq
  _ -> errorX "unknown instruction"

encodeInstruction :: forall regSize. (KnownNat regSize) => Instruction -> BitVector regSize
encodeInstruction = \case
  SubLeq -> 0b0000000011111111
  MovLeq -> 0b0000000011101110
  Pc -> 0b0000000000110011
  Mem -> 0b0000000000100010
  MemR -> 0b0000000000010001
  PcS -> 0b0000000000000000
  AddLeq -> 0b0000000011001100
  ShlLeq -> 0b0000000010011001
  ShrLeq -> 0b0000000010001000
  OrLeq -> 0b0000000001110111
  AndLeq -> 0b0000000001100110
  XorLeq -> 0b0000000001010101
  XnorLeq -> 0b0000000001000100

data Phase
  = Init (Maybe Ptr)-- First 8 Cycles Bootstrap
  | PhaseStart -- Save Input to IO Register and Fetch A and MCR
  | PhaseFetch2 -- Fetch B and C Bools for write Back if not Register File
  | PhaseFetch3 -- Fetch MEM A and MEM B Bools for write Back if not Register File
  | PhaseSave -- SAVE MEM A and MEM B ( in case of MCR being MEMR fetch MEM MEM B)
  | PhaseExec -- EXEC ALU OR SAVE MEM MEM B Bool for write Back if not Register File
  | PhaseWriteBack -- WRITE BACK MEM_B
  | PhaseInterrupt -- LOOP INTERRUPT till IOR does not change
  | PhaseHalt -- HALT State -> goto HALT State
  deriving (Show, Generic, NFDataX)

data CPUState = CPUState
  {
    _phase :: !Phase,
    _pc :: !DataWord,
    _mcr :: !Instruction,
    _chr :: !RegWord,
    _iwr :: !RegWord,
    _icr :: !RegWord,
    _csr :: !RegWord,
    _isr :: !RegWord,
    _idr :: !RegWord,
    _ior :: !RegWord,
    _a :: !DataWord,
    _b :: !DataWord,
    _c :: !DataWord,
    _mem_a :: !DataWord,
    _mem_b :: !DataWord,
    _mem_mem_b :: !DataWord,
    _mode :: !Mode
  } deriving (Show, Generic, NFDataX)

initCpuState :: CPUState
initCpuState = CPUState
  {
    _phase = Init Nothing,
    _pc = 0,
    _mcr = SubLeq,
    _chr = 0,
    _iwr = 0,
    _icr = 0,
    _csr = 0,
    _isr = 0,
    _idr = 0,
    _ior = 0,
    _a = 0,
    _b = 0,
    _c = 0,
    _mem_a = 0,
    _mem_b = 0,
    _mem_mem_b = 0,
    _mode = CISC
  }

makeLenses ''CPUState



type CPU = CPUM CPUState CPUOut



step ::Pure CPUIn-> CPU ()
step CPUIn{..} = do
  -- Update IOR in every State
  or_value <- use idr
  ior .= or_value .&. io_in

  pc_use <- use pc
  run_mode <- use mode

  let run_mode_offset = if run_mode == CISC then 1 else 0

  use phase >>= \case
    Init x -> do
      initialize x mem_in_a
    PhaseStart -> do
      phase .= PhaseFetch2
      if run_mode == CISC
        then do
          fetchPortA (resize pc_use)
          fetchPortB (resize pc_use + 1)
        else do
          fetchPortA $ resize pc_use
    PhaseFetch2 -> do
      if run_mode == CISC
        then do
          mcr .= decodeInstruction (resize mem_in_a)
          a .= mem_in_b
        else do
          a .= mem_in_a
      fetchPortA $ resize pc_use+run_mode_offset+1
      fetchPortB $ resize pc_use+run_mode_offset+2
      phase .= PhaseFetch3
    PhaseFetch3 -> do
      b .= mem_in_a
      c .= mem_in_b
      addr_a <- use a
      fetchPortA $ resize addr_a --fetch mem_a
      fetchPortB $ resize mem_in_b --fetch mem_b
      phase .= PhaseSave
    PhaseSave -> do
      mem_a .= mem_in_a
      mem_b .= mem_in_b
      phase .= PhaseExec
      -- MEMR needs mem mem b
      use mcr >>= \x -> when (x == MemR) $ do fetchPortA $ resize mem_in_b
    PhaseExec -> do
      mcr_use <- use mcr

      phase .= PhaseWriteBack
      if mcr_use == MemR
        then do
          mem_mem_b .= mem_in_a
          fetchPortA . resize =<< use mem_b
        else do
          --TODO
          undefined

    _ -> undefined


initialize :: Maybe Ptr -> DataWord -> CPU ()
initialize to_reg from_port_a = do
  pc_i <- use  pc
  -- Write back Bootstrap Register
  pc .= pc_i
  -- maybe ( ) (maybe () (writeAddressRegister) to_reg) from_port_a
  case to_reg of
    Just y -> do
      writeAddressRegister y (resize from_port_a)
      return ()
    Nothing -> do
      return ()

  if 1 < bootstrapRegisters+1 then do
    -- Read Boostrap Regs from Mem
    phase .= Init Nothing
    -- Fetch mem at PC
  else do
    phase .= PhaseStart
  pc += 1

--
fetchPortA :: Ptr ->  CPU ()
fetchPortA addr  = do
  if addr < bootstrapRegisters then do
    -- Write to Port will echo back next Cycle
    data_in_reg <- Just . resize <$> readAddressRegister addr
    mem_out_a .:= MemPort{_wr_addr= Just addr,_wr_data= data_in_reg}
  else do
    mem_out_a .:= MemPort{_wr_addr= Just addr,_wr_data= Nothing}
  --Check for Register and

fetchPortB :: Ptr ->  CPU ()
fetchPortB addr  = do
  if addr < bootstrapRegisters then do
    -- Write to Port will echo back next Cycle
    data_in_reg <- Just . resize <$> readAddressRegister addr
    mem_out_b .:= MemPort{_wr_addr= Just addr,_wr_data= data_in_reg}
  else do
    mem_out_b .:= MemPort{_wr_addr= Just addr,_wr_data= Nothing}


writePortA :: Ptr -> DataWord -> CPU ()
writePortA addr value = do
  undefined

writePortB :: Ptr -> DataWord -> CPU ()
writePortB addr value = do
  undefined


writeAddressRegister ::  Ptr -> RegWord -> CPU ()
writeAddressRegister addr value = do
  case addr of
    0 -> mcr .= decodeInstruction value
    1 -> chr .= value
    2 -> iwr .= value
    3 -> icr .= value
    4 -> csr .= value
    5 -> isr .= value
    6 -> idr .= value
    7 -> ior .= value
    _ -> error "Invalid Register"


readAddressRegister ::  Ptr -> CPU RegWord
readAddressRegister addr = do
  case addr of
    0 -> encodeInstruction <$> use mcr
    1 -> use chr
    2 -> use iwr
    3 -> use icr
    4 -> use csr
    5 -> use isr
    6 -> use idr
    7 -> use ior
    _ -> error "Invalid Register"
