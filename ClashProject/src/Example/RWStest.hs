{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
module Example.RWStest where


import Data.Monoid.Generic
import Clash.Prelude
import Control.Lens hiding ( op )
import Control.Monad.RWS


infix 4 .:=
(.:=) :: (MonadWriter t m, Monoid s) => ASetter s t a1 (First a2) -> a2 -> m ()
y .:= x =  scribe y $ First $ Just x


data State = StateStart | StateMiddle | StateEnd
  deriving stock (Generic, Show, Eq)
  deriving anyclass NFDataX

data CPUState = CPUState {
    _cpuState :: State,
    _cpuStateCounter :: Unsigned 8
  }deriving stock (Generic, Show, Eq)
  deriving anyclass NFDataX
makeLenses ''CPUState

newtype CPUin = CPUin {
    _cpuinA :: Unsigned 8
}

makeLenses ''CPUin

newtype CPUout = CPUout {
    _cpuoutA :: First (Unsigned 8)
}deriving stock (Generic, Show, Eq)
  deriving anyclass NFDataX
  deriving Semigroup via GenericSemigroup CPUout
  deriving Monoid via GenericMonoid CPUout

makeLenses ''CPUout


cpuStateNull :: CPUState
cpuStateNull = CPUState StateStart 0

type CpuM = RWS CPUin CPUout CPUState

simpleIO ::  HiddenClockResetEnable dom => Signal dom (Unsigned 8) -> Signal dom (Maybe (Unsigned 8))
simpleIO x = getFirst <$> _cpuoutA <$> result
  where
    result = cpuRunner (CPUin <$> x)


cpuRunner :: HiddenClockResetEnable dom => Signal dom CPUin -> Signal dom CPUout
cpuRunner = mealy cpuMealy cpuStateNull
  where cpuMealy s i = let ((),s',o) = runRWS mCPU i s
                      in (s',o)

mCPU :: CpuM ()
mCPU = use cpuState >>= (\case
   StateStart -> do
    cpuStateCounter += 1
    ctr <- use cpuStateCounter
    cpuState .= StateMiddle
    cpuoutA .:= ctr
   StateMiddle -> do
    cpuStateCounter -= 1
    cpuState .= StateEnd
    ctr <- use cpuStateCounter
    cpuoutA .:= ctr
   StateEnd -> do
    input <- view cpuinA
    cpuStateCounter .= input
    cpuoutA .:= input
    cpuState .= StateStart
   )


test :: [Maybe (Unsigned 8)]
test = sampleN 20 (withClockResetEnable systemClockGen resetGen enableGen simpleIO (fromList [0..]))
