{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}
module CyclicAccurate.CyclicAccurateInterfaces where
import Clash.Prelude
import Control.Lens
import StandardEntities.Instructions
import StandardEntities.Registers
import CyclicAccurate.CyclicAccurateStates
data Ioctr2Fsm regSize = Ioctr2Fsm
  { _isr :: BitVector regSize,
    _interrupt :: Bool,
    _cpu_stop :: Bool
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''Ioctr2Fsm

data Fsm2Ioctr regSize = Fsm2Ioctr
  { _iwr :: BitVector regSize, -- Interrupt Write Register
    _icr :: BitVector regSize,
    _interrupt_block :: Bool
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''Fsm2Ioctr

newtype IoBuf2Ioctr regSize = IoBuf2Ioctr
  {
    _ior_in :: BitVector regSize
  }

makeLenses ''IoBuf2Ioctr



data Fsm2Alu memSize = Fsm2Alu
  { _mcr :: Instruction, -- Machine Code Register
    _mem_a :: Signed memSize, -- Memory at address A (in reference 'E')
    _mem_b :: Signed memSize, -- Memory at address B (in reference 'D')
    _mem_mem_b :: Signed memSize, -- Memory at address MEM_B (in reference 'F')
    _pc :: BitVector memSize -- Program Counter
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''Fsm2Alu

data Alu2Fsm memSize = Alu2Fsm
  { _data_res :: Signed memSize,
    _cmp :: CompareResult,
    _overflow :: Bool
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''Alu2Fsm

data Fsm2Mem memSize = Fsm2Mem
  { _address :: BitVector memSize,
    _data_wr :: BitVector memSize,
    _wren :: Bool,
    _rden :: Bool
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''Fsm2Mem

newtype Mem2Fsm memSize = Mem2Fsm
  { _data_rd :: BitVector memSize
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''Mem2Fsm


data Fsm2Iobuf regSize = Fsm2Iobuf
  { _dataout :: BitVector regSize,
    _oe :: BitVector regSize
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''Fsm2Iobuf

newtype Iobuf2Fsm regSize = Iobuf2Fsm
  { _datain :: BitVector regSize
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''Iobuf2Fsm

newtype Fsm2ClockGen regSize = Fsm2ClockGen
  { _clockspeed :: BitVector regSize
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''Fsm2ClockGen

data Fsm2ComputerStatus regSize = Fsm2ComputerStatus
  { _status :: BitVector regSize,
    _cpu_stop_status :: Bool
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''Fsm2ComputerStatus

data FsmRegisters memSize regSize = FsmRegisters
  { _pci :: BitVector memSize, --variable PCi: natural := 0;
    _pci_new :: BitVector memSize, --variable PCi_new: natural := 0;
    _pcinewp :: BitVector memSize, --variable PCi_newp: natural := 0;
    _ai :: BitVector memSize, --variable Ai: STD_LOGIC_VECTOR (MEMORY_WIDTH-1 DOWNTO 0);
    _bi :: BitVector memSize, --variable Bi: STD_LOGIC_VECTOR (MEMORY_WIDTH-1 DOWNTO 0);
    _ci :: BitVector memSize, --variable Ci: STD_LOGIC_VECTOR (MEMORY_WIDTH-1 DOWNTO 0);
    _di :: BitVector memSize, --variable Di: STD_LOGIC_VECTOR (MEMORY_WIDTH-1 DOWNTO 0);
    _ei :: BitVector memSize, --variable Ei: STD_LOGIC_VECTOR (MEMORY_WIDTH-1 DOWNTO 0);
    _fi :: BitVector memSize, --variable Fi: STD_LOGIC_VECTOR (MEMORY_WIDTH-1 DOWNTO 0);
    _mcri :: Instruction, --variable MCRi: std_logic_vector(REG_WIDTH-1 downto 0);
    _chri :: BitVector regSize, --variable CHRi: std_logic_vector(REG_WIDTH-1 downto 0);
    _iwri :: BitVector regSize, --variable IWRi: std_logic_vector(REG_WIDTH-1 downto 0);
    _icri :: BitVector regSize, --variable ICRi: std_logic_vector(REG_WIDTH-1 downto 0);
    _csri :: BitVector regSize, --variable CSRi: std_logic_vector(REG_WIDTH-1 downto 0);
    _isri :: BitVector regSize, --variable ISRi: std_logic_vector(REG_WIDTH-1 downto 0);
    _idri :: BitVector regSize, --variable IDRi: std_logic_vector(REG_WIDTH-1 downto 0);
    _iori :: BitVector regSize, --variable IORi: std_logic_vector(REG_WIDTH-1 downto 0);
    _isri_new :: BitVector regSize, --variable ISRi_new: std_logic_vector(REG_WIDTH-1 downto 0);
    _alu_data_i :: Signed memSize, --variable ALU_DATAi: signed(MEMORY_WIDTH-1 DOWNTO 0);
    _f_mode_offset :: Unsigned memSize, --variable F_MODE_OFFSET: natural := 0;
    _f_mode :: Bool --variable F_MODE: std_logic := '0';
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''FsmRegisters


data FsmOutput memSize regSize = FsmOutput
  { _memOutput :: Fsm2Mem memSize,
    _ioctrOutput :: Fsm2Ioctr regSize,
    _aluOutput :: Fsm2Alu memSize,
    _iobufOutput :: Fsm2Iobuf regSize,
    _clockSpeedOutput :: Fsm2ClockGen regSize,
    _computerStatusOutput :: Fsm2ComputerStatus regSize
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''FsmOutput
data FsmInternalState memSize regSize = FsmInternalState
  { _cycleState :: FsmState,
    _internalRegisters :: FsmRegisters memSize regSize,
    _outputRegisters :: FsmOutput memSize regSize
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''FsmInternalState

data FsmInput memSize regSize = FsmInput
  { _memInput :: Mem2Fsm memSize,
    _ioctrInput :: Ioctr2Fsm regSize,
    _aluInput :: Alu2Fsm memSize,
    _iobufInput :: Iobuf2Fsm regSize
  }
  deriving (Show, Generic, NFDataX)

makeLenses ''FsmInput



data IoCtrlRegisters regSize = IoCtrlRegisters
  {
    _isr_t :: BitVector regSize, --variable ISR_T: std_logic_vector(REG_WIDTH-1 downto 0);
    _detect :: BitVector regSize, --variable DETECT: std_logic_vector(REG_WIDTH-1 downto 0);
    _detect_prev :: BitVector regSize, --signal DETECT_PREV: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    _edge :: Bool --variable edge: Integer;
  } deriving (Show, Generic, NFDataX)

makeLenses ''IoCtrlRegisters

ioCtrlRegistersInitial :: forall regSize . (KnownNat regSize) => IoCtrlRegisters regSize
ioCtrlRegistersInitial = IoCtrlRegisters
  { _isr_t = 0,
    _detect = 0,
    _detect_prev = 0,
    _edge = False
  }

ioCtrl2FsmInitial :: forall regSize . (KnownNat regSize) => Ioctr2Fsm regSize
ioCtrl2FsmInitial = Ioctr2Fsm
  {
    _isr = 0,
    _interrupt = False,
    _cpu_stop = True
  }

fsmRegistersNull :: forall memSize regSize. (KnownNat memSize, KnownNat regSize) => FsmRegisters memSize regSize
fsmRegistersNull =
  FsmRegisters
    { _pci = 0,
      _pci_new = 0,
      _pcinewp = 0,
      _ai = 0,
      _bi = 0,
      _ci = 0,
      _di = 0,
      _ei = 0,
      _fi = 0,
      _mcri = decodeInstruction (0 :: BitVector regSize),
      _chri = 0,
      _iwri = 0,
      _icri = 0,
      _csri = 0,
      _isri = 0,
      _idri = 0,
      _iori = 0,
      _isri_new = 0,
      _alu_data_i = 0,
      _f_mode_offset = 0,
      _f_mode = False
    }

fsmOutputNull :: forall memSize regSize. (KnownNat memSize, KnownNat regSize) => FsmOutput memSize regSize
fsmOutputNull = FsmOutput
        { _memOutput =
            Fsm2Mem
              { _address = 0,
                _data_wr = 0,
                _wren = False,
                _rden = False
              },
          _ioctrOutput =
            Fsm2Ioctr
              {
                _iwr = 0,
                _icr = 0,
                _interrupt_block = False
              },
          _aluOutput =
            Fsm2Alu
              { _mcr = decodeInstruction (0 :: BitVector regSize),
                _mem_a = 0,
                _mem_b = 0,
                _mem_mem_b = 0,
                _pc = 0
              },
          _iobufOutput =
            Fsm2Iobuf
              { _dataout = 0,
                _oe = 0
              },
          _clockSpeedOutput =
            Fsm2ClockGen
              { _clockspeed = 0
              },
          _computerStatusOutput =
            Fsm2ComputerStatus
              { _status = 0,
                _cpu_stop_status = False
              }
        }

fsmInputNull :: forall memSize regSize. (KnownNat memSize, KnownNat regSize) => FsmInput memSize regSize
fsmInputNull = FsmInput
        { _memInput =
            Mem2Fsm
              { _data_rd = 0
              },
          _ioctrInput =
            Ioctr2Fsm
              { _isr = 0,
                _interrupt = False,
                _cpu_stop = True
              },
          _aluInput =
            Alu2Fsm
              { _data_res = 0,
                _cmp = CMP_NONE,
                _overflow = False
              },
          _iobufInput =
            Iobuf2Fsm
              { _datain = 0
              }
        }
