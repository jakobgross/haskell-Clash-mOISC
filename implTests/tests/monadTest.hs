
import Clash.Prelude
import qualified Prelude as P
import Control.Monad.State.Strict
import Control.Monad.Loops (whileM_, whileJust_)
import Control.Monad.Extra (ifM, unlessM)

data BF = IncrPtr | DecrPtr | Incr | Decr | Output | Input | While [BF] deriving Show

type Cell = Word 8

class (Monad m) => MonadBFIO m
  where
    doOutput :: Cell -> m ()
    doInput :: m Cell

interp :: (MonadBFIO m) => [BF] -> StateT ([Cell], [Cell]) m ()
interp = mapM_ $ \instr -> case instr of
    IncrPtr -> modify $ \(ls, x:rs) -> (x:ls, rs)
    DecrPtr -> modify $ \(x:ls, rs) -> (ls, x:rs)
    Incr -> modifyCell nextIdx
    Decr -> modifyCell predIdx
    Output -> do
      x <- getCell lift $ doOutput x
    Input -> do
      x <- lift doInput
      setCell x
    While prog -> whileM_ ((/= 0) <$> getCell) $ interp prog
  where
    getCell = gets $ \(_, x:_) -> x
    setCell x = modify $ \(ls, _:rs) -> (ls, x:rs)
    modifyCell f = modify $ \(ls, x:rs) -> (ls, f x:rs)



cpu :: (HiddenClockResetEnable dom) => Signal dom CPUIn -> Signal dom CPUOut

data CPUIn = CPUIn{ } -- No inputs for now
data CPUOut = CPUOut { output :: Maybe Cell }
data CPUState = CPUState { cell :: Cell } deriving (Generic, NFDataX)
initState :: CPUState initState = CPUState { cell = 0 }
