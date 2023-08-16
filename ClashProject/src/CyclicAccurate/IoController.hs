module CyclicAccurate.IoController where

import Clash.Prelude
import CyclicAccurate.CyclicAccurateInterfaces
import CyclicAccurate.CyclicAccurateStates


{-# ANN
  topEntityComparisonIoController
  ( Synthesize
      { t_name = "IoCtr",
        t_inputs =
          [ PortName "CLK",
            PortName "RST",
            PortName "EN",
            PortName "INTERRUPT_BLOCK",
            PortName "IOR_in",
            PortName "IWR_in",
            PortName "ICR_in"
          ],
        t_output =
          PortProduct
            "out"
            [ PortName "ISR",
              PortName "INTERRUPT",
              PortName "CPU_STOP"
            ]
      }
  )
  #-}
topEntityComparisonIoController ::
  Clock XilinxSystem ->
  Reset XilinxSystem ->
  Enable XilinxSystem ->
  Signal XilinxSystem Bit -> -- INTERRUPT_BLOCK in
  Signal XilinxSystem (BitVector 8) -> -- IOR in
  Signal XilinxSystem (BitVector 8) -> -- IWR in
  Signal XilinxSystem (BitVector 8) -> -- ICR in
  ( Signal XilinxSystem (BitVector 8), -- ISR out
    Signal XilinxSystem Bit, -- INTERRUPT out
    Signal XilinxSystem Bit -- CPU_STOP out
  )
topEntityComparisonIoController
  clk
  rst
  en
  int_block
  ior_from_iobuf
  iwr_in
  icr_in = (_isr <$> ioct_output, boolToBit . _interrupt <$> ioct_output, boolToBit . _cpu_stop <$> ioct_output)
    where
      converted_fsm_input = Fsm2Ioctr <$> iwr_in <*> icr_in <*> (bitToBool <$> int_block)
      converted_iobuf_input = IoBuf2Ioctr <$> ior_from_iobuf
      ioct_output = withClockResetEnable clk rst en $ ioController converted_fsm_input converted_iobuf_input

ioController ::
  forall n dom.
  (HiddenClockResetEnable dom, KnownNat n) =>
  Signal dom (Fsm2Ioctr n) ->
  Signal dom (IoBuf2Ioctr n) ->
  Signal dom (Ioctr2Fsm n)
ioController fsmIn ioIn = mealy ioCtrCycle (RESET_IOCTR, ioCtrlRegistersInitial, ioCtrl2FsmInitial) $ bundle (fsmIn, ioIn)
{-# NOINLINE ioController #-}
ioCtrCycle ::
  forall n dom.
  (HiddenClockResetEnable dom, KnownNat n) =>
  (IoCtrState, IoCtrlRegisters n, Ioctr2Fsm n) -> -- Internal State
  (Fsm2Ioctr n, IoBuf2Ioctr n) -> -- Input
  ((IoCtrState, IoCtrlRegisters n, Ioctr2Fsm n), Ioctr2Fsm n) -- (nextState,output)
ioCtrCycle (state, registers, outputbuffer) (fsm_in, iobuf_in) = case state of
  RESET_IOCTR -> ((WAIT_FOR_IWR, ioCtrlRegistersInitial, ioCtrl2FsmInitial), ioCtrl2FsmInitial)
  WAIT_FOR_IWR -> ((state', registers', outputbuffer'), outputbuffer')
    where
      state' = if _interrupt_block fsm_in then EDGE_DETECT else WAIT_FOR_IWR
      registers' =
        registers
          { _detect = _ior_in iobuf_in .&. _iwr fsm_in,
            _detect_prev = _ior_in iobuf_in .&. _iwr fsm_in
          }
      outputbuffer' = outputbuffer {_interrupt = False, _cpu_stop = True}
  EDGE_DETECT -> ((state', registers', outputbuffer'), outputbuffer')
    where
      detect_new = _ior_in iobuf_in .&. _iwr fsm_in
      state' = if detect_new == _detect_prev registers then EDGE_DETECT else EDGE_DETECT_DIR
      registers' =
        registers
          { _edge = False
          }
      outputbuffer' = outputbuffer {_interrupt = False, _cpu_stop = False}
  EDGE_DETECT_DIR -> ((EDGE_DECIDE, registers', outputbuffer'), outputbuffer')
    where
      isr_new =
        (_detect registers .&. complement (_detect_prev registers) .&. _icr fsm_in)
          .|. (complement (_detect registers) .&. _detect_prev registers .&. complement (_icr fsm_in))
      registers' =
        registers
          { _edge = isr_new > 0,
            _isr_t = isr_new
          }
      outputbuffer' = outputbuffer {_interrupt = False, _cpu_stop = False}
  EDGE_DECIDE -> ((state', registers', outputbuffer'), outputbuffer')
    where
      state' = if _edge registers then LEAVE else EDGE_DETECT
      registers' =
        registers
          { _detect_prev = _detect registers
          }
      outputbuffer' = outputbuffer {_cpu_stop = False}
  LEAVE -> ((RESYNC, registers, outputbuffer'), outputbuffer')
    where
      outputbuffer' =
        outputbuffer {_isr = _isr_t registers, _interrupt = True, _cpu_stop = True}
  RESYNC -> ((RESET_IOCTR, registers, outputbuffer'), outputbuffer')
    where
      outputbuffer' =
        outputbuffer {_isr = _isr_t registers, _interrupt = True, _cpu_stop = True}
