{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE RecordWildCards #-}

-- Monadic Implementation of the CPU with a RWS monad
module CyclicMonad.MonadMoisc where

import Clash.Prelude
import Control.Lens
import Control.Monad.RWS
import CyclicAccurate.CyclicAccurateStates
import CyclicMonad.MonadInterfaces hiding (cycleState, internalRegisters)
--import qualified Data.List as L
import Data.Maybe (fromMaybe)
import StandardEntities.Instructions
import StandardEntities.Registers

infix 4 .:=

(.:=) :: (MonadWriter t m, Monoid s) => ASetter s t a1 (First a2) -> a2 -> m ()
y .:= x = scribe y $ First $ Just x

data InternalStateNoOutputRegisters memSize regSize = InternalStateNoOutputRegisters
  { _cycleState :: FsmState,
    _internalRegisters :: FsmRegisters memSize regSize
  }
  deriving (Show, Generic, NFDataX)

internalState0 :: forall memSize regSize. (KnownNat memSize, KnownNat regSize) => InternalStateNoOutputRegisters memSize regSize
internalState0 =
  InternalStateNoOutputRegisters
    { _cycleState = RESET,
      _internalRegisters = fsmRegistersNull :: FsmRegisters memSize regSize
    }

makeLenses ''InternalStateNoOutputRegisters

type FSMm memSize regSize =
  RWS
    (FsmInput memSize regSize)
    (FsmOutput memSize regSize)
    (InternalStateNoOutputRegisters memSize regSize)


-- For normal Programm Flow
fsmRunner ::
  forall memSize regSize dom.
  (KnownNat memSize, KnownNat regSize, HiddenClockResetEnable dom) =>
  Signal dom (FsmInput memSize regSize) ->
  Signal dom (FsmOutput memSize regSize)
fsmRunner = mealy fsmMealy internalState0
  where
    fsmMealy s i =
      let ((), s', o) = runRWS mFSM i s
       in (s', o)

-- For Debug Purposes
fsmRunnerWithInternalState ::
  forall memSize regSize dom.
  (KnownNat memSize, KnownNat regSize, HiddenClockResetEnable dom) =>
  Signal dom (FsmInput memSize regSize) ->
  Signal dom (FsmOutput memSize regSize, InternalStateNoOutputRegisters memSize regSize)
fsmRunnerWithInternalState = mealy fsmMealy internalState0
  where
    fsmMealy s i =
      let ((), s', o) = runRWS mFSM i s
       in (s', (o, s'))



--test :: [FsmOutput 16 8]
--test = sampleN 50 (withClockResetEnable systemClockGen resetGen enableGen fsmRunner (fromList (L.repeat (fsmInputNull :: FsmInput 16 8))))

--testWithState :: [(FsmOutput 16 8, InternalStateNoOutputRegisters 16 8)]
--testWithState = sampleN 50 (withClockResetEnable systemClockGen resetGen enableGen fsmRunnerWithInternalState (fromList (L.repeat (fsmInputNull :: FsmInput 16 8))))
{-# ANN
  monadMoiscTopModuleExplicit
  ( Synthesize
      { t_name = "FSM",
        t_inputs =
          [ PortName "CLK",
            PortName "RST",
            PortName "EN",
            PortName "in_mem_data_rd",
            PortName "in_ioctr_isr",
            PortName "in_ioctr_interrupt",
            PortName "in_ioctr_cpu_stop",
            PortName "in_alu_data_res",
            PortName "in_alu_cmp",
            PortName "in_alu_overflow",
            PortName "in_iobuf_data"

          ],
        t_output =
          PortProduct
            "out"
            [
              PortName "mem_address",
              PortName "mem_data_wr",
              PortName "mem_wren",
              PortName "mem_rden",
              PortName "ioctr_iwr",
              PortName "ioctr_icr",
              PortName "ioctr_interrupt_block",
              PortName "alu_mcr",
              PortName "alu_mem_a",
              PortName "alu_mem_b",
              PortName "alu_mem_mem_b",
              PortName "alu_pc",
              PortName "iobuf_dataout",
              PortName "iobuf_oe",
              PortName "clock_speed",
              PortName "status_status",
              PortName "status_cpu_stop_status"

            ]
      }
  )
  #-}
monadMoiscTopModuleExplicit :: -- Encode and Decodes Inputs for refrence Implementation
  Clock XilinxSystem ->
  Reset XilinxSystem ->
  Signal XilinxSystem Bool -> -- CPU Stop in
  Signal XilinxSystem ( BitVector 16) -> -- Mem2FSM
  Signal XilinxSystem ( BitVector 8) -> -- isr :: BitVector regSize,
  Signal XilinxSystem Bit -> --interrupt :: Bool,
  Signal XilinxSystem Bit -> --cpu_stop :: Bool
  Signal XilinxSystem (Signed 16) -> -- data_res :: Signed memSize,
  Signal XilinxSystem (BitVector 3) -> -- cmp :: CompareResult,
  Signal XilinxSystem Bit -> -- overflow :: Bool
  Signal XilinxSystem (BitVector 8) -> -- IOBUf2FSM datain :: BitVector regSize
  (
    --memOutput :: Fsm2Mem memSize,
    Signal XilinxSystem (BitVector 16), -- address :: BitVector memSize,
    Signal XilinxSystem (BitVector 16), -- data_wr :: BitVector memSize,
    Signal XilinxSystem Bit, -- wren :: Bool,
    Signal XilinxSystem Bit, -- rden :: Bool
    --ioctrOutput :: Fsm2Ioctr regSize,
    Signal XilinxSystem (BitVector 8), -- iwr :: BitVector regSize, -- Interrupt Write Register
    Signal XilinxSystem (BitVector 8), -- icr :: BitVector regSize,
    Signal XilinxSystem Bit, -- interrupt_block :: Bool
    --aluOutput :: Fsm2Alu memSize ,
    Signal XilinxSystem (BitVector 8),  -- mcr :: Instruction,       -- Machine Code Register
    Signal XilinxSystem (Signed 16), -- mem_a :: Signed memSize,  -- Memory at address A (in reference 'E')
    Signal XilinxSystem (Signed 16),    -- mem_b :: Signed memSize,  -- Memory at address B (in reference 'D')
    Signal XilinxSystem (Signed 16),    -- mem_mem_b :: Signed memSize, -- Memory at address MEM_B (in reference 'F')
    Signal XilinxSystem (BitVector 16),    -- pc :: Signed memSize   -- Program Counter
    --iobufOutput :: Fsm2Iobuf regSize,
    Signal XilinxSystem (BitVector 8),-- dataout :: BitVector regSize,
    Signal XilinxSystem (BitVector 8),-- oe :: BitVector regSize
    --clockSpeedOutput :: Fsm2ClockGen regSize,
    Signal XilinxSystem (BitVector 8), -- clockspeed :: BitVector regSize
    --computerStatusOutput :: Fsm2ComputerStatus regSize
    Signal XilinxSystem (BitVector 8),-- status :: BitVector regSize,
    Signal XilinxSystem Bit -- cpu_stop_status :: Bool
  )
monadMoiscTopModuleExplicit clk rst en
  data2mem_in
  isr_in interrupt_in cpu_stop_in
  data_res_in cmp_in overflow_in
  iobuf_data_in
    = result
  where
    from_fsm = withClockResetEnable clk rst (toEnable en) $ fsmRunner fsmIn :: Signal XilinxSystem (FsmOutput 16 8)
    fsmIn = FsmInput <$> mem2Fsm <*> ioctr2Fsm <*> alu2Fsm <*> iobuf2Fsm
    mem2Fsm = Mem2Fsm <$> data2mem_in
    ioctr2Fsm = Ioctr2Fsm <$> isr_in <*> (bitToBool <$> interrupt_in) <*> (bitToBool <$> cpu_stop_in)
    alu2Fsm = Alu2Fsm <$> data_res_in <*> (decodeCompareResult <$> cmp_in) <*> (bitToBool <$> overflow_in)
    iobuf2Fsm = Iobuf2Fsm <$> iobuf_data_in
    result =
      (
        (fromMaybe  0 <$> getFirst) . view (memOutput .address) <$> from_fsm,
        (fromMaybe  0 <$> getFirst) . view (memOutput .data_wr) <$> from_fsm,
        boolToBit . (fromMaybe  False <$> getFirst) . view (memOutput .wren) <$> from_fsm,
        boolToBit . (fromMaybe  False <$> getFirst) . view (memOutput .rden ) <$> from_fsm,

        (fromMaybe  0 <$> getFirst) . view (ioctrOutput .iwr) <$> from_fsm,
        (fromMaybe  0 <$> getFirst) . view (ioctrOutput .icr) <$> from_fsm,
        boolToBit . (fromMaybe  False <$> getFirst) . view (ioctrOutput .interrupt_block) <$> from_fsm,

        encodeInstruction . (fromMaybe SubLeq <$> getFirst) . view (aluOutput .mcr) <$> from_fsm,
        (fromMaybe  0 <$> getFirst) . view (aluOutput .mem_a) <$> from_fsm,
        (fromMaybe  0 <$> getFirst) . view (aluOutput .mem_b) <$> from_fsm,
        (fromMaybe  0 <$> getFirst) . view (aluOutput .mem_mem_b) <$> from_fsm,
        (fromMaybe  0 <$> getFirst) . view (aluOutput .pc) <$> from_fsm,

        (fromMaybe  0 <$> getFirst) . view (iobufOutput .dataout) <$> from_fsm,
        (fromMaybe  0 <$> getFirst) . view (iobufOutput .oe) <$> from_fsm,

        (fromMaybe  0 <$> getFirst) . view (clockSpeedOutput .clockspeed) <$> from_fsm,

        (fromMaybe  0 <$> getFirst) . view (computerStatusOutput .status) <$> from_fsm,
        boolToBit . (fromMaybe  False <$> getFirst) . view (computerStatusOutput .cpu_stop_status) <$> from_fsm
      )


{-# ANN
  monadMoiscTopModuleImplicit
  ( Synthesize
      { t_name = "MonadFSM",
        t_inputs =
          [ PortName "CLK",
            PortName "RST",
            PortName "EN",
            PortProduct
              "in"
              [ PortName "mem_data_rd",
                PortProduct
                  "ioctr"
                  [ PortName "isr",
                    PortName "interrupt",
                    PortName "cpu_stop"
                  ],
                PortProduct
                  "alu"
                  [ PortName "data_res",
                    PortName "cmp",
                    PortName "overflow"
                  ],
                PortName "iobuf_data"
              ]
          ],
        t_output =
          PortProduct
            "out"
            [ PortProduct
                "mem"
                [ PortName "address",
                  PortName "data_wr",
                  PortName "wren",
                  PortName "rden"
                ],
              PortProduct
                "ioctr"
                [ PortName "ior",
                  PortName "iwr",
                  PortName "icr",
                  PortName "interrupt_block"
                ],
              PortProduct
                "alu"
                [ PortName "mcr",
                  PortName "mem_a",
                  PortName "mem_b",
                  PortName "mem_mem_b",
                  PortName "pc"
                ],
              PortProduct
                "iobuf"
                [ PortName "dataout",
                  PortName "oe"
                ],
              PortName "clock_speed",
              PortProduct
                "status"
                [ PortName "status",
                  PortName "cpu_stop_status"
                ]
            ]
      }
  )
  #-}
monadMoiscTopModuleImplicit ::
  Clock System ->
  Reset System ->
  Signal System Bool ->
  Signal System (FsmInput 16 8) ->
  Signal System (FsmOutput 16 8)
monadMoiscTopModuleImplicit clk rst en = withClockResetEnable clk rst (toEnable en) fsmRunner

-- unwrap (test L.!! 0) (memOutput.address) (0)
--unwrap :: s -> Getting (First a) s (First a) -> a -> a
-- unwrap recordField getVal defaultVal = fromMaybe defaultVal (getFirst $ view getVal recordField)
-- unwrapSignal :: Functor f => s -> Getting (f (First b)) s (f (First b)) -> b -> f b
-- unwrapSignal recordField getVal defaultVal = fromMaybe defaultVal . getFirst <$> view getVal recordField

mFSM ::
  forall memSize regSize.
  (KnownNat memSize, KnownNat regSize) =>
  FSMm memSize regSize ()
mFSM =
  use cycleState >>= \case
    RESET -> do
      cycleState .= CPU_CYCLE_START
      internalRegisters .= fsmRegistersNull
      tell fsmOutputNull
    CPU_CYCLE_START -> do
      from_io_port <- view $ iobufInput . datain -- Write IOR in to mem and internal register
      internalRegisters . iori .= from_io_port
      writeMem (pack iorAddr) (resize from_io_port)
      current_mode <- use $ internalRegisters . f_mode -- Decide Run Mode
      next_pci <- use $ internalRegisters . pci_new
      internalRegisters . pci .= next_pci
      cycleState
        .= if not current_mode || (next_pci < pack bootstrapRegisters)
          then FETCH_A
          else FETCH_MCR
      aluOutput . pc .:= next_pci -- Set PC for ALU
    FETCH_MCR -> do
      fetchMem =<< use (internalRegisters . pci)
      cycleState .= FETCH_0_SAVE_MCR
    FETCH_0_SAVE_MCR -> do
      data_read <- view $ memInput . data_rd
      internalRegisters . mcri .= decodeInstruction data_read
      disableMem
    FETCH_A -> do
      offset <- use $ internalRegisters . f_mode_offset
      fetchMem . (+ pack offset) =<< use (internalRegisters . pci)
      cycleState .= FETCH_B_SAVE_A
    FETCH_B_SAVE_A -> do
      offset <- use $ internalRegisters . f_mode_offset
      fetchMem . (+ (1 + pack offset)) =<< use (internalRegisters . pci)
      data_read <- view $ memInput . data_rd
      internalRegisters . ai .= data_read
      cycleState .= FETCH_C_SAVE_B
    FETCH_C_SAVE_B -> do
      offset <- use $ internalRegisters . f_mode_offset
      fetchMem . (+ (2 + pack offset)) =<< use (internalRegisters . pci)
      data_read <- view $ memInput . data_rd
      internalRegisters . bi .= data_read
      cycleState .= FETCH_D_SAVE_C
    FETCH_D_SAVE_C -> do
      addr_b <- use $ internalRegisters . bi
      fetchMem addr_b
      data_read <- view $ memInput . data_rd
      internalRegisters . ci .= data_read
      cycleState .= FETCH_E_SAVE_D
    FETCH_E_SAVE_D -> do
      addr_a <- use $ internalRegisters . ai
      fetchMem addr_a
      data_read <- view $ memInput . data_rd
      internalRegisters . di .= data_read
      cycleState .= FETCH_F_SAVE_E
    FETCH_F_SAVE_E -> do
      addr_addr_b <- use $ internalRegisters . di
      fetchMem addr_addr_b
      data_read <- view $ memInput . data_rd
      internalRegisters . ei .= data_read
      cycleState .= FETCH_0_SAVE_F
    FETCH_0_SAVE_F -> do
      disableMem
      data_read <- view $ memInput . data_rd
      internalRegisters . fi .= data_read
      -- check if we are still in bootstrap mode or have to do TTA
      current_bi <- use $ internalRegisters . bi
      current_pc <- use $ internalRegisters . pci
      cycleState
        .= if current_pc < pack bootstrapRegisters
          then BOOTSTRAP_CTRL
          else
            if current_bi < pack bootstrapRegisters
              then TTA_CTRL
              else EXEC_CTRL
    BOOTSTRAP_CTRL -> do
      cycleState .= CPU_CYCLE_START
      current_pc <- use (internalRegisters . pci)
      internalRegisters . pci_new .= current_pc + 1
      current_a <- use (internalRegisters . ai)
      when (current_pc == pack mcrAddr) do
        if current_a == 0
          then do
            internalRegisters . mcri .= decodeInstruction current_a
            internalRegisters . f_mode_offset .= 1
            internalRegisters . f_mode .= True
          else do
            internalRegisters . mcri .= decodeInstruction current_a
            internalRegisters . f_mode_offset .= 0
            internalRegisters . f_mode .= False
      when (current_pc == pack chrAddr) do
        internalRegisters . chri .= resize current_a
      when (current_pc == pack icrAddr) do
        internalRegisters . icri .= resize current_a
      when (current_pc == pack iwrAddr) do
        internalRegisters . iwri .= resize current_a
      when (current_pc == pack csrAddr) do
        internalRegisters . csri .= resize current_a
      when (current_pc == pack isrAddr) do
        internalRegisters . isri .= resize current_a
      when (current_pc == pack idrAddr) do
        internalRegisters . idri .= resize current_a
        current_ior <- use $ internalRegisters . iori
        internalRegisters . iori .= current_ior .&. resize current_a
      when (current_pc == pack iorAddr) do
        internalRegisters . iori .= resize current_a
        current_idr <- use $ internalRegisters . idri
        internalRegisters . idri .= current_idr .&. resize current_a
    TTA_CTRL -> do
      current_b <- use (internalRegisters . bi)
      current_e <- use (internalRegisters . ei)
      when (current_b == pack mcrAddr) do
        cycleState .= TTA_MEM_WRITE_BACK
        internalRegisters . mcri .= decodeInstruction current_e
        aluOutput . mcr .:= MovLeq
      when (current_b == pack chrAddr) do
        let chr_new = resize current_e
         in do
              internalRegisters . chri .= chr_new
              cycleState .= (if chr_new == chrHalt then CPU_HALT else TTA_MEM_WRITE_BACK)
              aluOutput . mcr .:= MovLeq
      when (current_b == pack iwrAddr) do
        cycleState .= IWR_INT_TRIGGER
        internalRegisters . iwri .= resize current_e
        aluOutput . mcr .:= MovLeq
      when (current_b == pack icrAddr) do
        cycleState .= TTA_WRITE_BACK
        internalRegisters . icri .= resize current_e
        aluOutput . mcr .:= MovLeq
      when (current_b == pack csrAddr) do
        cycleState .= TTA_WRITE_BACK
        internalRegisters . csri .= resize current_e
        aluOutput . mcr .:= MovLeq
      when (current_b == pack isrAddr) do
        cycleState .= CPU_CYCLE_START
        current_c <- use (internalRegisters . ci)
        internalRegisters . pci_new .= resize current_c
      when (current_b == pack idrAddr) do
        cycleState .= TTA_WRITE_BACK
        let idr_new = resize current_e
         in do
              internalRegisters . idri .= idr_new
              current_ior <- use $ internalRegisters . iori
              internalRegisters . iori .= current_ior .&. idr_new
              aluOutput . mcr .:= MovLeq
      when (current_b == pack iorAddr) do
        cycleState .= TTA_WRITE_BACK
        let ior_new = resize current_e
         in do
              current_idr <- use $ internalRegisters . idri
              internalRegisters . iori .= current_idr .&. ior_new
              aluOutput . mcr .:= MovLeq
      updateOutputs
    EXEC_CTRL -> do
      current_instruction <- use $ internalRegisters . mcri
      cycleState
        .= ( if current_instruction == MemR
               then MEMR_WRITE_BACK
               else
                 if current_instruction == Mem
                   then MEM_WRITE_BACK
                   else
                     if current_instruction == PcS
                       then PCS_WRITE_BACK
                       else LEQ_FLAGS_WRITE_BACK
           )
      disableMem
    TTA_WRITE_BACK -> do
      cycleState .= CPU_CYCLE_START
      alu_result <- view $ aluInput . data_res
      internalRegisters . alu_data_i .= alu_result
      current_b <- use (internalRegisters . bi)
      writeMem current_b (pack alu_result)
    LEQ_PC_WRITE_BACK -> do
      current_instruction <- use $ internalRegisters . mcri
      cycleState
        .= if
            current_instruction == Pc ||
            current_instruction == MovLeq ||
            current_instruction == ShrLeq ||
            current_instruction == ShlLeq ||
            current_instruction == AndLeq ||
            current_instruction == ShlLeq ||
            current_instruction == AndLeq ||
            current_instruction == OrLeq ||
            current_instruction == XorLeq ||
            current_instruction == XnorLeq ||
            current_instruction == SubLeq ||
            current_instruction == AddLeq
          then CPU_CYCLE_START
          else LEQ_FLAGS_WRITE_BACK
      alu_result <- view $ aluInput . data_res
      current_c <- use (internalRegisters . ci)
      curent_pc <- use (internalRegisters . pci)
      current_offset <- use (internalRegisters . f_mode_offset)
      internalRegisters . alu_data_i .= alu_result
      internalRegisters . pci_new
        .= if alu_result <= 0
          then current_c
          else curent_pc + 3 + pack current_offset
      current_b <- use (internalRegisters . bi)
      writeMem current_b (pack alu_result)
    MEMR_WRITE_BACK -> do
      cycleState .= TTA_MEMR_WRITE_BACK
      alu_result <- view $ aluInput . data_res
      internalRegisters . alu_data_i .= alu_result
      current_a <- use (internalRegisters . ai)
      writeMem current_a (pack alu_result)
      current_pc <- use (internalRegisters . pci)
      current_offset <- use (internalRegisters . f_mode_offset)
      internalRegisters . pci_new .= current_pc + 3 + pack current_offset
    MEM_WRITE_BACK -> do
      cycleState .= TTA_MEM_WRITE_BACK
      alu_result <- view $ aluInput . data_res
      internalRegisters . alu_data_i .= alu_result
      current_d <- use (internalRegisters . di)
      writeMem current_d (pack alu_result)
      current_pc <- use (internalRegisters . pci)
      current_offset <- use (internalRegisters . f_mode_offset)
      internalRegisters . pci_new .= current_pc + 3 + pack current_offset
    TTA_MEM_WRITE_BACK -> do
      current_di <- use (internalRegisters . di)
      alu_result <- view $ aluInput . data_res
      updateRegister (resize current_di) (resize $ pack alu_result)
      current_chri <- use (internalRegisters . chri)
      cycleState
        .= ( if current_chri == chrHalt
               then CPU_HALT
               else
                 if current_di == pack iwrAddr
                   then IWR_INT_TRIGGER
                   else CPU_CYCLE_START
           )
      updateOutputs
      disableMem
    TTA_MEMR_WRITE_BACK -> do
      current_ai <- use (internalRegisters . ai)
      alu_result <- view $ aluInput . data_res
      updateRegister (resize current_ai) (resize $ pack alu_result)
      current_chri <- use (internalRegisters . chri)
      cycleState
        .= ( if current_chri == chrHalt
               then CPU_HALT
               else
                 if current_ai == pack iwrAddr
                   then IWR_INT_TRIGGER
                   else CPU_CYCLE_START
           )
      updateOutputs
      disableMem
    PCS_WRITE_BACK -> do
      cycleState .= CPU_CYCLE_START
      disableMem
      alu_result <- view $ aluInput . data_res
      current_c <- use (internalRegisters . ci)
      let new_pci_ptr = pack alu_result
       in do
            internalRegisters . pci_new
              .= if new_pci_ptr == 0
                then current_c
                else new_pci_ptr
            internalRegisters . pcinewp .= new_pci_ptr
    LEQ_FLAGS_WRITE_BACK -> do
      cycleState .= CPU_CYCLE_START
      cmp_result <- view $ aluInput . cmp
      overflow_result <- view $ aluInput . overflow
      let chri_new = resize (encodeCompareResult cmp_result ++# ((if overflow_result then 1 else 0) :: BitVector 1))
       in do
            internalRegisters . chri .= chri_new
            writeMem (pack chrAddr) (resize chri_new)
    CPU_HALT -> do
      cycleState .= CPU_HALT
      computerStatusOutput . cpu_stop_status .:= True
      disableMem
    IWR_INT_TRIGGER -> do
      cycleState .= IWR_INT_SET
      current_iwri <- use (internalRegisters . iwri)
      writeMem (pack iwrAddr) (resize current_iwri)
    IWR_INT_SET -> do
      cycleState .= CPU_CYCLE_START
      ioctrOutput . interrupt_block .:= True
      disableMem
    WAIT_FOR_INTERRUPT -> do
      interrupted <- view (ioctrInput . interrupt)
      isr_in <- view (ioctrInput . isr)
      cycleState
        .= if interrupted
          then CPU_CYCLE_START
          else WAIT_FOR_INTERRUPT
      internalRegisters . isri .= isr_in
      ioctrOutput . interrupt_block .:= False
      disableMem
    ISR_WRITE_BACK -> do
      cycleState .= ISR_UPDATE
      new_isri <- use (internalRegisters . isri_new)
      writeMem (pack isrAddr) (resize new_isri)
      ioctrOutput . interrupt_block .:= False
    ISR_UPDATE -> do
      cycleState .= IWR_RESET
      current_isr_new <- use (internalRegisters . isri_new)
      internalRegisters . isri .= current_isr_new
      disableMem
    IWR_RESET -> do
      cycleState .= CPU_CYCLE_START
      current_iwr <- use (internalRegisters . iwri)
      ioctrOutput . iwr .:= current_iwr
      current_c <- use (internalRegisters . ci)
      internalRegisters . pci_new .= current_c
      internalRegisters . iwri .= 0

writeMem ::
  forall memSize regSize.
  (KnownNat memSize, KnownNat regSize) =>
  BitVector memSize ->
  BitVector memSize ->
  FSMm memSize regSize ()
writeMem addr value = do
  memOutput . address .:= addr
  memOutput . data_wr .:= value
  memOutput . wren .:= True
  memOutput . rden .:= False

fetchMem ::
  forall memSize regSize.
  (KnownNat memSize, KnownNat regSize) =>
  BitVector memSize ->
  FSMm memSize regSize ()
fetchMem addr = do
  memOutput . address .:= addr
  memOutput . rden .:= True
  memOutput . wren .:= False

disableMem ::
  forall memSize regSize.
  (KnownNat memSize, KnownNat regSize) =>
  FSMm memSize regSize ()
disableMem = do
  memOutput . rden .:= False
  memOutput . wren .:= False

updateOutputs ::
  forall memSize regSize.
  (KnownNat memSize, KnownNat regSize) =>
  FSMm memSize regSize ()
updateOutputs = do
  current_iwr <- use $ internalRegisters . iwri
  ioctrOutput . iwr .:= current_iwr
  current_icr <- use $ internalRegisters . icri
  ioctrOutput . icr .:= current_icr

  current_iori <- use $ internalRegisters . iori
  iobufOutput . dataout .:= current_iori
  current_idr <- use $ internalRegisters . idri
  iobufOutput . oe .:= current_idr

  current_csr <- use $ internalRegisters . csri
  clockSpeedOutput . clockspeed .:= current_csr

  current_chri <- use $ internalRegisters . chri
  computerStatusOutput . status .:= current_chri

updateRegister ::
  forall memSize regSize.
  (KnownNat memSize, KnownNat regSize) =>
  BitVector memSize ->
  BitVector regSize ->
  FSMm memSize regSize ()
updateRegister reg_addr reg_value = do
  when (reg_addr == pack chrAddr) do
    internalRegisters . chri .= reg_value
  when (reg_addr == pack iwrAddr) do
    internalRegisters . iwri .= reg_value
  when (reg_addr == pack icrAddr) do
    internalRegisters . icri .= reg_value
  when (reg_addr == pack csrAddr) do
    internalRegisters . csri .= reg_value
  when (reg_addr == pack idrAddr) do
    internalRegisters . idri .= reg_value
  when (reg_addr == pack iorAddr) do
    internalRegisters . iori .= reg_value
