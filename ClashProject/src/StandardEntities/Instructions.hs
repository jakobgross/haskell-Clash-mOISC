{-# LANGUAGE LambdaCase #-}
module StandardEntities.Instructions where
import Clash.Prelude

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
  deriving (Show, Generic, NFDataX, Lift, Eq)

decodeInstruction :: forall regSize. (KnownNat regSize) => BitVector regSize -> Instruction
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
