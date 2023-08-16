{-# LANGUAGE LambdaCase #-}
module StandardEntities.Registers where

import Clash.Prelude

data CompareResult
  = CMP_B_BIGGER
  | CMP_A_BIGGER
  | CMP_AB_EQUAL
  | CMP_NONE
  deriving (Show, Generic, NFDataX)

encodeCompareResult :: CompareResult -> BitVector 3
encodeCompareResult = \case
  CMP_B_BIGGER -> 0b001
  CMP_A_BIGGER -> 0b010
  CMP_AB_EQUAL -> 0b100
  CMP_NONE -> 0b000

decodeCompareResult :: BitVector 3 -> CompareResult
decodeCompareResult = \case
  0b001 -> CMP_B_BIGGER
  0b010 -> CMP_A_BIGGER
  0b100 -> CMP_AB_EQUAL
  0b000 -> CMP_NONE
  _ -> errorX "unknown compare result"

addrBootstrap :: forall memSize. (KnownNat memSize) => Unsigned memSize
addrBootstrap = 7 :: Unsigned memSize

mcrAddr :: forall memSize. (KnownNat memSize) => Unsigned memSize
mcrAddr = 0 :: Unsigned memSize

chrAddr :: forall memSize. (KnownNat memSize) => Unsigned memSize
chrAddr = 1 :: Unsigned memSize

iwrAddr :: forall memSize. (KnownNat memSize) => Unsigned memSize
iwrAddr = 2 :: Unsigned memSize

icrAddr :: forall memSize. (KnownNat memSize) => Unsigned memSize
icrAddr = 3 :: Unsigned memSize

csrAddr :: forall memSize. (KnownNat memSize) => Unsigned memSize
csrAddr = 4 :: Unsigned memSize

isrAddr :: forall memSize. (KnownNat memSize) => Unsigned memSize
isrAddr = 5 :: Unsigned memSize

idrAddr :: forall memSize. (KnownNat memSize) => Unsigned memSize
idrAddr = 6 :: Unsigned memSize

iorAddr :: forall memSize. (KnownNat memSize) => Unsigned memSize
iorAddr = 7 :: Unsigned memSize

bootstrapRegisters :: forall memSize. (KnownNat memSize) => Unsigned memSize
bootstrapRegisters = 8 :: Unsigned memSize

chrHalt :: forall regSize. (KnownNat regSize) => BitVector regSize
chrHalt = 0b11111111

