module CyclicAccurate.Fsm where

-- import Lib.Alu

import Clash.Prelude
import StandardEntities.Instructions
import CyclicAccurate.CyclicAccurateInterfaces
import CyclicAccurate.CyclicAccurateStates
import StandardEntities.Registers

{-# ANN
  topEntityFsm
  ( Synthesize
      { t_name = "FSM",
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
                [ PortName "iwr",
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
topEntityFsm ::
  Clock XilinxSystem ->
  Reset XilinxSystem ->
  Enable XilinxSystem ->
  Signal XilinxSystem (FsmInput 16 8) ->
  Signal XilinxSystem (FsmOutput 16 8)
topEntityFsm clk rst en = withClockResetEnable clk rst en fsm



{-# ANN
  topEntitiyComparisonFsm
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
topEntitiyComparisonFsm :: -- Encode and Decodes Inputs for refrence Implementation
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
topEntitiyComparisonFsm
  clk rst en
  data2mem_in
  isr_in interrupt_in cpu_stop_in
  data_res_in cmp_in overflow_in
  iobuf_data_in
    = result
  where
    resFsm2Mem = _memOutput <$> fsmOutput
    resFsm2Ioctr = _ioctrOutput <$> fsmOutput
    resFsm2Alu = _aluOutput <$> fsmOutput
    resFsm2Iobuf = _iobufOutput <$> fsmOutput
    resFsm2ClockGen = _clockSpeedOutput <$> fsmOutput
    resFsm2ComputerStatus = _computerStatusOutput <$> fsmOutput

    result = (
      -- Fsm2Mem,
      _address <$> resFsm2Mem,-- address :: BitVector memSize,
      _data_wr <$> resFsm2Mem,-- data_wr :: BitVector memSize,
      boolToBit . _wren <$> resFsm2Mem,-- wren :: Bool,
      boolToBit . _rden <$> resFsm2Mem,-- rden :: Bool
      --Fsm2Ioctr,
      _iwr <$> resFsm2Ioctr,-- iwr :: BitVector regSize,
      _icr <$> resFsm2Ioctr,-- icr :: BitVector regSize,
      boolToBit . _interrupt_block <$> resFsm2Ioctr,  -- interrupt_block :: Bool
      --Fsm2Alu,
      encodeInstruction . _mcr <$> resFsm2Alu,
      _mem_a <$> resFsm2Alu,
      _mem_b <$> resFsm2Alu,
      _mem_mem_b <$> resFsm2Alu,
      _pc <$> resFsm2Alu,
      -- resFsm2Iobuf,
      _dataout <$> resFsm2Iobuf,
      _oe <$> resFsm2Iobuf,
      -- resFsm2ClockGen,
      _clockspeed <$> resFsm2ClockGen,
      -- resFsm2ComputerStatus
      _status <$> resFsm2ComputerStatus,
      boolToBit . _cpu_stop_status <$> resFsm2ComputerStatus
      )

    fsmInput = FsmInput <$> mem2Fsm <*> ioctr2Fsm <*> alu2Fsm <*> iobuf2Fsm
    mem2Fsm = Mem2Fsm <$> data2mem_in
    ioctr2Fsm = Ioctr2Fsm <$> isr_in <*> (bitToBool <$> interrupt_in) <*> (bitToBool <$> cpu_stop_in)
    alu2Fsm = Alu2Fsm <$> data_res_in <*> (decodeCompareResult <$> cmp_in) <*> (bitToBool <$> overflow_in)
    iobuf2Fsm = Iobuf2Fsm <$> iobuf_data_in

    en' = toEnable en
    -- fsmOutput = withClockResetEnable clk rst en' delay fsmOutputNull fsmOutput' --Delay FSM output by 1 cycle to account for reference latency
    fsmOutput = withClockResetEnable clk rst en' $ twoCycleFsm fsmInput

twoCycleFsm::forall memSize regSize dom.
  (KnownNat memSize, KnownNat regSize, HiddenClockResetEnable dom) =>
  Signal dom (FsmInput memSize regSize) ->
  Signal dom (FsmOutput memSize regSize)
{-# NOINLINE twoCycleFsm #-}
twoCycleFsm fsmInput = second <$> calc
  where

    resetState = FsmInternalState RESET resetRegisters resetOutput
    resetRegisters = fsmRegistersNull
    resetOutput = fsmOutputNull

    result :: Signal dom (FsmInternalState memSize regSize, FsmOutput memSize regSize, Bool)
    result = register (resetState, resetOutput, True) calc

    calc = extendOne <$> (first <$>  result) <*> fsmInput <*>  (third <$> result)

    first (a,_,_) = a
    second (_,a,_) = a
    third (_,_,a) = a

    -- Only updates internal cyclestate every second cycle
    extendOne state input flag = case flag of
      True -> (state, _outputRegisters state, False)
      False -> (state', output', True)
        where
          (state', output') = fsmcycle state input

fsm ::
  forall memSize regSize dom.
  (KnownNat memSize, KnownNat regSize, HiddenClockResetEnable dom) =>
  Signal dom (FsmInput memSize regSize) ->
  Signal dom (FsmOutput memSize regSize)
fsm = mealy fsmcycle resetState
  where
    resetState = FsmInternalState CPU_CYCLE_START resetRegisters resetOutput
    resetRegisters = fsmRegistersNull
    resetOutput = fsmOutputNull


fsmcycle ::
  forall memSize regSize.
  (KnownNat memSize, KnownNat regSize) =>
  FsmInternalState memSize regSize ->
  FsmInput memSize regSize ->
  (FsmInternalState memSize regSize, FsmOutput memSize regSize)
fsmcycle fsmState fsmInput =
  case _cycleState fsmState of
    RESET -> (fsmState', output)
      where
        fsmState' = FsmInternalState CPU_CYCLE_START registers output
        registers = fsmRegistersNull
        output = fsmOutputNull
    -- First State after Reset and Always the at the start of a cycle
    CPU_CYCLE_START -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }

        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput',
              _ioctrOutput = ioctrOutput',
              _aluOutput = aluOutput'
            }

        -- Bootstrap or Single Instrction Mode -> Fetch A directly else Fetch Instruction first
        cycleState'
          | not (_f_mode (_internalRegisters fsmState)) || _pci_new (_internalRegisters fsmState) < pack bootstrapRegisters = FETCH_A
          | otherwise = FETCH_MCR

        -- Update Pci
        internalRegisters' =
          (_internalRegisters fsmState)
            { _pci = _pci_new (_internalRegisters fsmState)
            }

        -- update PC output for ALU
        aluOutput' =
          (_aluOutput (_outputRegisters fsmState))
            { _pc = _pci_new (_internalRegisters fsmState)
            }

        -- Write input IOBuffer to memory Register
        memOutput' = writeMemAdressData (pack iorAddr) (resize $ _datain (_iobufInput fsmInput))
        -- Enable Interrupt
        ioctrOutput' = (_ioctrOutput (_outputRegisters fsmState)) {_interrupt_block = False}

    -- Fetch Instruction when in Multi Instruction Mode
    FETCH_MCR -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _outputRegisters = outputRegisters'
            }

        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput'
            }

        cycleState' = FETCH_0_SAVE_MCR

        -- Request Instruction from Mem
        memOutput' = readMemFromAddress $ _pci (_internalRegisters fsmState)

    -- Only To Save the Instruction Register
    -- Fetching A will be done in this cycle in a non cyclic accurate implementation
    FETCH_0_SAVE_MCR -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }

        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput',
              _aluOutput = aluOutput'
            }

        cycleState' = FETCH_A

        -- save MCR
        internalRegisters' =
          (_internalRegisters fsmState)
            { _mcri = decodeInstruction (_data_rd (_memInput fsmInput))
            }

        -- Memory should not read nor write
        memOutput' = disableMemOutput

        aluOutput' =
          (_aluOutput (_outputRegisters fsmState))
            { _mcr = _mcri internalRegisters'
            }

    -- Fetch A
    FETCH_A -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _outputRegisters = outputRegisters'
            }

        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput'
            }

        cycleState' = FETCH_B_SAVE_A

        -- Request A from Memory
        memOutput' = readMemFromAddress $ _pci (_internalRegisters fsmState) + pack (_f_mode_offset (_internalRegisters fsmState))

    -- Fetch B
    FETCH_B_SAVE_A -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }

        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput'
            }

        cycleState' = FETCH_C_SAVE_B

        -- Request B from Memory
        memOutput' = readMemFromAddress $ _pci (_internalRegisters fsmState) + pack (_f_mode_offset (_internalRegisters fsmState)) + 1

        -- Save A
        internalRegisters' =
          (_internalRegisters fsmState)
            { _ai = _data_rd (_memInput fsmInput)
            }

    -- Fetch C
    FETCH_C_SAVE_B -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }

        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput'
            }

        cycleState' = FETCH_D_SAVE_C

        -- Request C from Memory
        memOutput' = readMemFromAddress $ _pci (_internalRegisters fsmState) + pack (_f_mode_offset (_internalRegisters fsmState)) + 2

        -- Save B
        internalRegisters' =
          (_internalRegisters fsmState)
            { _bi = _data_rd (_memInput fsmInput)
            }

    -- Fetch mem[B]
    FETCH_D_SAVE_C -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }

        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput'
            }

        cycleState' = FETCH_E_SAVE_D

        -- Request D from Memory ( memory at address b)
        memOutput' = readMemFromAddress $ _bi (_internalRegisters fsmState)

        -- Save C
        internalRegisters' =
          (_internalRegisters fsmState)
            { _ci = _data_rd (_memInput fsmInput)
            }

    -- Fetch mem[A]
    FETCH_E_SAVE_D -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }

        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput',
              _aluOutput = aluOutput'
            }

        cycleState' = FETCH_F_SAVE_E

        -- Request E from Memory (memory at address a)
        memOutput' = readMemFromAddress $ _ai (_internalRegisters fsmState)

        -- Save D
        internalRegisters' =
          (_internalRegisters fsmState)
            { _di = _data_rd (_memInput fsmInput)
            }
        aluOutput' =
          (_aluOutput (_outputRegisters fsmState))
            { _mem_b = unpack $ _di internalRegisters'
            }

    -- Fetch mem[mem[B]]
    FETCH_F_SAVE_E -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }

        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput',
              _aluOutput = aluOutput'
            }

        cycleState' = FETCH_0_SAVE_F

        -- Request F from Memory (mem[mem[b]])
        memOutput' = readMemFromAddress $ _di (_internalRegisters fsmState)

        -- Save E
        internalRegisters' =
          (_internalRegisters fsmState)
            { _ei = _data_rd (_memInput fsmInput)
            }
        aluOutput' =
          (_aluOutput (_outputRegisters fsmState))
            { _mem_a = unpack $ _ei internalRegisters'
            }

    -- Save mem[mem[B]] and decide which State to go to
    FETCH_0_SAVE_F -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }

        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput',
              _aluOutput = aluOutput'
            }

        cycleState'
          | unpack (_pci (_internalRegisters fsmState)) < bootstrapRegisters = BOOTSTRAP_CTRL
          | unpack (_bi (_internalRegisters fsmState)) < bootstrapRegisters = TTA_CTRL
          | otherwise = EXEC_CTRL

        -- Save F
        internalRegisters' =
          (_internalRegisters fsmState)
            { _fi = _data_rd (_memInput fsmInput)
            }
        aluOutput' =
          (_aluOutput (_outputRegisters fsmState))
            { _mem_mem_b = unpack $ _fi internalRegisters'
            }

        memOutput' = disableMemOutput {_address = 0}

    -- In the first few Cycles load only bootstrap registers
    BOOTSTRAP_CTRL -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters'',
              _outputRegisters = outputRegisters'
            }

        cycleState' = CPU_CYCLE_START

        -- Set new PC
        internalRegisters' =
          (_internalRegisters fsmState)
            { _pci_new = _pci (_internalRegisters fsmState) + 1 -- Only increase PC by 1 for bootstrap registers
            }

        -- Update Register
        outputRegisters' =
          (_outputRegisters fsmState)
            { _aluOutput = aluOutput'
            }

        pci_cmp :: Unsigned memSize
        pci_cmp = unpack (_pci (_internalRegisters fsmState))
        internalRegisters'' :: FsmRegisters memSize regSize
        internalRegisters''
          | pci_cmp == mcrAddr =
            let mcr_new = pack $ _ai $ _internalRegisters fsmState
             in if mcr_new == 0
                  then -- Multi Instruction Mode

                    internalRegisters'
                      { _mcri = decodeInstruction mcr_new,
                        _f_mode_offset = 1,
                        _f_mode = True
                      }
                  else -- Single Instruction Mode

                    internalRegisters'
                      { _mcri = decodeInstruction mcr_new,
                        _f_mode_offset = 0,
                        _f_mode = False
                      }
          -- Update CPU Status and Halt Register
          | pci_cmp == chrAddr =
            internalRegisters'
              { _chri = resize $ _ai $ _internalRegisters fsmState
              }
          -- Update Interrupt Wait Register
          | pci_cmp == iwrAddr =
            internalRegisters'
              { _iwri = resize $ _ai $ _internalRegisters fsmState
              }
          -- Update Interrupt Configuation Register
          | pci_cmp == icrAddr =
            internalRegisters'
              { _icri = resize $ _ai $ _internalRegisters fsmState
              }
          -- Update Clock Speed Register
          | pci_cmp == csrAddr =
            internalRegisters'
              { _csri = resize $ _ai $ _internalRegisters fsmState
              }
          -- Update Interrupt Status Register
          | pci_cmp == isrAddr =
            internalRegisters'
              { _isri = resize $ _ai $ _internalRegisters fsmState
              }
          -- Update IO-Direction Register
          | pci_cmp == idrAddr =
            internalRegisters'
              { _idri = resize $ _ai $ _internalRegisters fsmState,
                _iori = _iori (_internalRegisters fsmState) .&. resize (_ai $ _internalRegisters fsmState)
              }
          -- Update IO-Data Register
          | pci_cmp == iorAddr =
            internalRegisters'
              { _iori = _idri (_internalRegisters fsmState) .&. resize (_ai $ _internalRegisters fsmState)
              }
          -- This should never happen
          | otherwise = errorX "Unknown Pci to Bootstrap Register"
        aluOutput' =
          (_aluOutput (_outputRegisters fsmState))
            { _mcr = _mcri internalRegisters''
            }

    -- TTA (Transport Triggered Architecture)
    -- This is for the cases we need to write to a register
    TTA_CTRL -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }
        b_cmp = unpack (_bi (_internalRegisters fsmState))
        (cycleState', internalRegisters', aluOutput')
          | b_cmp == mcrAddr =
            ( TTA_WRITE_BACK,
              (_internalRegisters fsmState)
                { _mcri = decodeInstruction $ _ei (_internalRegisters fsmState)
                -- Update instruction Mode ??
                },
              (_aluOutput (_outputRegisters fsmState))
                { _mcr = MovLeq
                }
            )
          | b_cmp == chrAddr =
            let chr_new = resize $ _ei $ _internalRegisters fsmState
             in ( if chr_new == chrHalt then CPU_HALT else TTA_WRITE_BACK,
                  (_internalRegisters fsmState)
                    { _chri = chr_new
                    },
                  (_aluOutput (_outputRegisters fsmState))
                    { _mcr = MovLeq
                    }
                )
          | b_cmp == iwrAddr =
            ( IWR_INT_TRIGGER,
              (_internalRegisters fsmState)
                { _iwri = resize $ _ei $ _internalRegisters fsmState
                },
              (_aluOutput (_outputRegisters fsmState))
                { _mcr = MovLeq
                }
            )
          | b_cmp == icrAddr =
            ( TTA_WRITE_BACK,
              (_internalRegisters fsmState)
                { _icri = resize $ _ei $ _internalRegisters fsmState
                },
              (_aluOutput (_outputRegisters fsmState))
                { _mcr = MovLeq
                }
            )
          | b_cmp == csrAddr =
            ( TTA_WRITE_BACK,
              (_internalRegisters fsmState)
                { _csri = resize $ _ei $ _internalRegisters fsmState
                },
              (_aluOutput (_outputRegisters fsmState))
                { _mcr = MovLeq
                }
            )
          | b_cmp == isrAddr =
            ( CPU_CYCLE_START,
              (_internalRegisters fsmState)
                { _pci_new = resize $ _ci $ _internalRegisters fsmState
                },
              _aluOutput (_outputRegisters fsmState)
            )
          | b_cmp == idrAddr =
            ( TTA_WRITE_BACK,
              let idr_new = resize $ _ei $ _internalRegisters fsmState
               in (_internalRegisters fsmState)
                    { _idri = idr_new,
                      _iori = _iori (_internalRegisters fsmState) .&. idr_new
                    },
              (_aluOutput (_outputRegisters fsmState))
                { _mcr = MovLeq
                }
            )
          | b_cmp == iorAddr =
            ( TTA_WRITE_BACK,
              (_internalRegisters fsmState)
                { _iori = _idri (_internalRegisters fsmState) .&. resize (_ei $ _internalRegisters fsmState)
                },
              (_aluOutput (_outputRegisters fsmState))
                { _mcr = MovLeq
                }
            )
          | otherwise = errorX "Unknown Register in TTA_CTRL"

        outputRegisters' =
          (_outputRegisters fsmState)
            { _ioctrOutput = ioctrOutput',
              _iobufOutput = iobufOutput',
              _clockSpeedOutput = clockSpeedOutput',
              _computerStatusOutput = computerStatusOutput',
              _aluOutput = aluOutput'
            }
        ioctrOutput' =
          (_ioctrOutput (_outputRegisters fsmState))
            {
              _iwr = _iwri internalRegisters',
              _icr = _icri internalRegisters'
            }
        iobufOutput' =
          (_iobufOutput (_outputRegisters fsmState))
            { _dataout = _iori internalRegisters',
              _oe = _idri internalRegisters'
            }
        clockSpeedOutput' =
          (_clockSpeedOutput (_outputRegisters fsmState))
            { _clockspeed = _csri internalRegisters'
            }
        computerStatusOutput' =
          (_computerStatusOutput (_outputRegisters fsmState))
            { _status = _chri internalRegisters'
            }

    -- Normal Programm Execution
    EXEC_CTRL -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _outputRegisters = outputRegisters'
            }
        currentInstruction = _mcri (_internalRegisters fsmState)

        -- Save depending on Instruction
        cycleState'
          | currentInstruction == MemR = MEMR_WRITE_BACK
          | currentInstruction == Mem = MEM_WRITE_BACK
          | currentInstruction == PcS = PCS_WRITE_BACK
          | otherwise = LEQ_PC_WRITE_BACK

        -- Disable Mem
        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput'
            }
        memOutput' = disableMemOutput

    -- Write back to Memory and set the according Registers
    TTA_WRITE_BACK -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }
        cycleState' = CPU_CYCLE_START
        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput'
            }
        -- Get Result from ALU
        internalRegisters' =
          (_internalRegisters fsmState)
            { _alu_data_i = _data_res (_aluInput fsmInput)
            }
        -- Write Back Result
        memOutput' = writeMemAdressData (_bi (_internalRegisters fsmState)) (pack $ _alu_data_i internalRegisters')

    -- Write back to Memory and decide if Flags need to be written
    LEQ_PC_WRITE_BACK -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }
        cycleState' = case _mcri (_internalRegisters fsmState) of
          Pc -> CPU_CYCLE_START
          MovLeq -> CPU_CYCLE_START
          ShrLeq -> CPU_CYCLE_START
          ShlLeq -> CPU_CYCLE_START
          AndLeq -> CPU_CYCLE_START
          OrLeq -> CPU_CYCLE_START
          XorLeq -> CPU_CYCLE_START
          XnorLeq -> CPU_CYCLE_START
          SubLeq -> LEQ_FLAGS_WRITE_BACK
          AddLeq -> LEQ_FLAGS_WRITE_BACK
          _ -> LEQ_FLAGS_WRITE_BACK
        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput'
            }
        -- Get Results from ALU (and set PC accordingly)
        pc_temp =
          if _data_res (_aluInput fsmInput) <= 0
              then _ci (_internalRegisters fsmState)
              else _pci (_internalRegisters fsmState) + 3 + pack (_f_mode_offset (_internalRegisters fsmState))
        internalRegisters' =
          (_internalRegisters fsmState)
            { _alu_data_i = _data_res (_aluInput fsmInput),
              _pci_new = pc_temp
            }
        -- Write Back Result
        memOutput' =
          writeMemAdressData
            (_bi (_internalRegisters fsmState))
            (pack $ _alu_data_i internalRegisters')

    -- Recursive write Back mem[a] = mem[mem[b]]
    MEMR_WRITE_BACK -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }
        cycleState' = TTA_MEMR_WRITE_BACK
        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput'
            }
        -- Get Result from ALU
        internalRegisters' =
          (_internalRegisters fsmState)
            { _alu_data_i = _data_res (_aluInput fsmInput),
              _pci_new = _pci (_internalRegisters fsmState) + pack (_f_mode_offset (_internalRegisters fsmState)) + 3
            }
        -- Write Back Result
        memOutput' =
          writeMemAdressData
            (_ai (_internalRegisters fsmState))
            (pack $ _alu_data_i internalRegisters')

    -- Recursive write Back mem[mem[b]] = mem[a]
    MEM_WRITE_BACK -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }
        cycleState' = TTA_MEM_WRITE_BACK
        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput'
            }
        -- Get Result from ALU
        internalRegisters' =
          (_internalRegisters fsmState)
            { _alu_data_i = _data_res (_aluInput fsmInput),
              _pci_new = _pci (_internalRegisters fsmState) + pack (_f_mode_offset (_internalRegisters fsmState)) + 3
            }
        -- Write Back Result
        memOutput' =
          writeMemAdressData
            (_di (_internalRegisters fsmState))
            (pack $ _alu_data_i internalRegisters')

    -- Write back mem_a to TTA Registers
    TTA_MEM_WRITE_BACK -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }

        di_cached = unpack $ _di (_internalRegisters fsmState)
        alu_result = pack $ _data_res (_aluInput fsmInput)

        -- update according to mem_b
        internalRegisters'
          | di_cached == chrAddr = (_internalRegisters fsmState) {_chri = resize alu_result}
          | di_cached == iwrAddr = (_internalRegisters fsmState) {_iwri = resize alu_result}
          | di_cached == icrAddr = (_internalRegisters fsmState) {_icri = resize alu_result}
          | di_cached == csrAddr = (_internalRegisters fsmState) {_csri = resize alu_result}
          | di_cached == idrAddr = (_internalRegisters fsmState) {_idri = resize alu_result}
          | di_cached == iorAddr = (_internalRegisters fsmState) {_iori = resize alu_result}
          | otherwise = _internalRegisters fsmState -- otherwise no update

        cycleState'
          | _chri internalRegisters' == chrHalt = CPU_HALT
          | di_cached == iwrAddr = IWR_INT_TRIGGER
          | otherwise = CPU_CYCLE_START

        -- set all outputs according to the variables
        outputRegisters' =
          (_outputRegisters fsmState)
            { _ioctrOutput = ioctrOutput',
              _iobufOutput = iobufOutput',
              _clockSpeedOutput = clockSpeedOutput',
              _computerStatusOutput = computerStatusOutput',
              _memOutput = memOutput'
            }
        ioctrOutput' =
          (_ioctrOutput (_outputRegisters fsmState))
            {
              _iwr = _iwri internalRegisters',
              _icr = _icri internalRegisters'
            }
        iobufOutput' =
          (_iobufOutput (_outputRegisters fsmState))
            { _dataout = _iori internalRegisters',
              _oe = _idri internalRegisters'
            }
        clockSpeedOutput' =
          (_clockSpeedOutput (_outputRegisters fsmState))
            { _clockspeed = _csri internalRegisters'
            }
        computerStatusOutput' =
          (_computerStatusOutput (_outputRegisters fsmState))
            { _status = _chri internalRegisters'
            }
        memOutput' = disableMemOutput

    -- Write back mem_mem_b to TTA Registers
    TTA_MEMR_WRITE_BACK -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }
        ai_cached = unpack $ _ai (_internalRegisters fsmState)
        alu_result = pack $ _data_res (_aluInput fsmInput)

        internalRegisters'
          | ai_cached == chrAddr = (_internalRegisters fsmState) {_chri = resize alu_result}
          | ai_cached == iwrAddr = (_internalRegisters fsmState) {_iwri = resize alu_result}
          | ai_cached == icrAddr = (_internalRegisters fsmState) {_icri = resize alu_result}
          | ai_cached == csrAddr = (_internalRegisters fsmState) {_csri = resize alu_result}
          | ai_cached == idrAddr = (_internalRegisters fsmState) {_idri = resize alu_result}
          | ai_cached == iorAddr = (_internalRegisters fsmState) {_iori = resize alu_result}
          | otherwise = _internalRegisters fsmState -- otherwise no update

        cycleState'
          | _chri internalRegisters' == chrHalt = CPU_HALT
          | ai_cached == iwrAddr = IWR_INT_TRIGGER
          | otherwise = CPU_CYCLE_START

        outputRegisters' =
          (_outputRegisters fsmState)
            { _ioctrOutput = ioctrOutput',
              _iobufOutput = iobufOutput',
              _clockSpeedOutput = clockSpeedOutput',
              _computerStatusOutput = computerStatusOutput',
              _memOutput = memOutput'
            }
        ioctrOutput' =
          (_ioctrOutput (_outputRegisters fsmState))
            {
              _iwr = _iwri internalRegisters',
              _icr = _icri internalRegisters'
            }
        iobufOutput' =
          (_iobufOutput (_outputRegisters fsmState))
            { _dataout = _iori internalRegisters',
              _oe = _idri internalRegisters'
            }
        clockSpeedOutput' =
          (_clockSpeedOutput (_outputRegisters fsmState))
            { _clockspeed = _csri internalRegisters'
            }
        computerStatusOutput' =
          (_computerStatusOutput (_outputRegisters fsmState))
            { _status = _chri internalRegisters'
            }
        memOutput' = disableMemOutput

    -- Write back new PC_ptr
    PCS_WRITE_BACK -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }
        cycleState' = CPU_CYCLE_START
        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = disableMemOutput
            }

        -- Get Result from ALU
        new_pci_ptr = pack $ _data_res (_aluInput fsmInput)
        internalRegisters' =
          (_internalRegisters fsmState)
            { -- Update PC with new value
              _pci_new =
                if new_pci_ptr == 0
                  then _ci (_internalRegisters fsmState)
                  else new_pci_ptr,
              _pcinewp = new_pci_ptr
            }

    -- Update Cpu-Status-Halt-Register
    LEQ_FLAGS_WRITE_BACK -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }
        cycleState' = CPU_CYCLE_START
        cmp_new = encodeCompareResult $ _cmp (_aluInput fsmInput)
        overflow_new = if _overflow (_aluInput fsmInput) then 1 else 0 :: BitVector 1
        -- ++# is concatenation
        -- resize will fill the rest with zeros
        chri_new = cmp_new ++# overflow_new

        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput'
            }
        memOutput' =
          writeMemAdressData
            (pack chrAddr)
            (resize chri_new)
        internalRegisters' =
          (_internalRegisters fsmState)
            { _chri = resize chri_new
            }

    -- Halts the CPU -> there is no turning back from here except resetting the System
    CPU_HALT -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _outputRegisters = outputRegisters'
            }
        cycleState' = CPU_HALT
        outputRegisters' =
          (_outputRegisters fsmState)
            { _computerStatusOutput = computerStatusOutput',
              _memOutput = disableMemOutput
            }
        -- Kill Processor until Reset
        computerStatusOutput' =
          (_computerStatusOutput (_outputRegisters fsmState))
            { _cpu_stop_status = True
            }

    -- Write Interrupt Register to Memory
    IWR_INT_TRIGGER -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _outputRegisters = outputRegisters'
            }
        cycleState' = IWR_INT_SET
        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput'
            }
        memOutput' =
          writeMemAdressData
            (pack iwrAddr)
            (resize $ _iwri $ _internalRegisters fsmState)

    -- Set Interrupt Block
    IWR_INT_SET -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _outputRegisters = outputRegisters'
            }
        cycleState' = CPU_CYCLE_START
        outputRegisters' =
          (_outputRegisters fsmState)
            { _ioctrOutput = ioctrOutput',
              _memOutput = disableMemOutput
            }
        ioctrOutput' =
          (_ioctrOutput (_outputRegisters fsmState))
            { _interrupt_block = True
            }

    -- Loop this state until interrupt is triggered
    WAIT_FOR_INTERRUPT -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }
        cycleState'
          | _interrupt (_ioctrInput fsmInput) = ISR_WRITE_BACK
          | otherwise = WAIT_FOR_INTERRUPT

        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = disableMemOutput,
              _ioctrOutput = ioctrOutput'
            }
        internalRegisters' =
          (_internalRegisters fsmState)
            { _isri_new = _isr (_ioctrInput fsmInput)
            }
        ioctrOutput' =
          (_ioctrOutput (_outputRegisters fsmState))
            { _interrupt_block = False
            }

    -- Write Interrupt Status Register to Memory
    ISR_WRITE_BACK -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _outputRegisters = outputRegisters'
            }
        cycleState' = ISR_UPDATE
        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = memOutput',
              _ioctrOutput = ioctrOutput'
            }
        memOutput' =
          writeMemAdressData
            (pack isrAddr)
            (resize $ _isri_new $ _internalRegisters fsmState)
        ioctrOutput' =
          (_ioctrOutput (_outputRegisters fsmState))
            { _interrupt_block = False
            }

    -- Update Internal Interrupt Status Register
    ISR_UPDATE -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }
        cycleState' = IWR_RESET
        outputRegisters' =
          (_outputRegisters fsmState)
            { _memOutput = disableMemOutput
            }
        internalRegisters' =
          (_internalRegisters fsmState)
            { _isri = _isri_new $ _internalRegisters fsmState
            }

    -- Update IWR Output and Set New PC
    IWR_RESET -> (fsmState', outputRegisters')
      where
        fsmState' =
          fsmState
            { _cycleState = cycleState',
              _internalRegisters = internalRegisters',
              _outputRegisters = outputRegisters'
            }
        cycleState' = CPU_CYCLE_START
        outputRegisters' =
          (_outputRegisters fsmState)
            { _ioctrOutput = ioctrOutput'
            }
        ioctrOutput' =
          (_ioctrOutput (_outputRegisters fsmState))
            { _iwr = _iwri $ _internalRegisters fsmState
            }
        internalRegisters' =
          (_internalRegisters fsmState)
            { _pci_new = _ci (_internalRegisters fsmState),
              _iwri = 0
            }
  where
    -- _ -> errorX "fsmcycle: unknown cycle state"

    disableMemOutput :: Fsm2Mem memSize
    disableMemOutput =
      (_memOutput (_outputRegisters fsmState))
        { _rden = False,
          _wren = False
        }
    writeMemAdressData :: BitVector memSize -> BitVector memSize -> Fsm2Mem memSize
    writeMemAdressData addr data_out =
      (_memOutput (_outputRegisters fsmState))
        { _rden = False,
          _wren = True,
          _address = addr,
          _data_wr = data_out
        }
    readMemFromAddress :: BitVector memSize -> Fsm2Mem memSize
    readMemFromAddress addr =
      (_memOutput (_outputRegisters fsmState))
        { _rden = True,
          _wren = False,
          _address = addr
        }
