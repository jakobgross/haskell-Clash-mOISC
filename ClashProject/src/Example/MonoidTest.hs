{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE LambdaCase #-}
module Example.MonoidTest where

import Clash.Prelude
import Data.Monoid (Last(..))
import Control.Monad.State

data CycleState =
  CycleStart |
  UpdateR0 |
  EndCycle
  deriving (Generic, Show, Eq, NFDataX)

data CpuState = CpuState{
    pc :: Unsigned 8,
    r0 :: Unsigned 8,
    r1 :: Unsigned 8,
    r2 :: Unsigned 8,
    nextState :: CycleState
  } deriving (Generic, Show, Eq, NFDataX)

data CpuIn = CpuIn{
  a :: Unsigned 8,
  b :: Unsigned 8,
  c :: Unsigned 8
  }deriving (Generic, Show, Eq, NFDataX)

newtype CpuOut = CpuOut{
  z :: Maybe(Unsigned 8)
  } deriving (Generic, Show, Eq, NFDataX)

type CPU = State CpuState

step:: CpuIn -> CPU CpuOut
step CpuIn{..} = gets nextState >>= \case
    CycleStart -> do
      modify $ \s -> s{r2= b,r1 = a,nextState = UpdateR0}
      return $ CpuOut{z=Nothing}
    UpdateR0 -> do
      x <- gets r1
      y <- gets r2
      modify $ \s -> s{r0 = x+y,nextState = EndCycle}
      return $ CpuOut{z=Nothing}
    EndCycle -> do
      x <- gets r0
      pc' <- gets pc
      modify $ \s -> s{nextState = CycleStart,pc = pc'+1}
      return $ CpuOut{z=Just x}






