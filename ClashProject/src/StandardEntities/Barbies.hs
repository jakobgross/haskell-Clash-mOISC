{-# LANGUAGE FlexibleContexts #-}
module StandardEntities.Barbies where

import Clash.Prelude
import Control.Monad.Writer ( WriterT, MonadWriter )
import Control.Monad.State
import Control.Lens hiding (Index, assign)
import Data.Monoid (Last(..))
import Barbies
import Barbies.Bare
type Pure b = b Bare Identity
type Partial b = Barbie (b Covered) Last
type Signals dom b = b Covered (Signal dom)

infix 4 .:=
(.:=) :: (Applicative f, MonadWriter (Barbie b f) m) => Setter' (b f) (f a) -> a -> m ()
fd .:= x = scribe (iso getBarbie Barbie . fd) (pure x)

assignOut :: (Applicative f, MonadWriter (Barbie b f) m) => Setter' (b f) (f a) -> a -> m ()
assignOut fd x = fd .:= x

update :: (BareB b, ApplicativeB (b Covered)) => Pure b -> Partial b -> Pure b
update initials edits = bstrip $ bzipWith update1 (bcover initials) (getBarbie edits)
  where
    update1 :: Identity a -> Last a -> Identity a
    update1 initial edit = maybe initial Identity (getLast edit)

type CPUM s o = WriterT (Barbie (o Covered) Last) (State s)


import Barbies
import Barbies.Bare
import Data.Barbie.TH 
-- Definition of CPUOut exactly as before, enclosed in a TH invocation 
declareBareB [d| data CPUOut = CPUOut
  { _romAddr :: PC,
  _inputNeeded :: Bool } |]
makeLenses ''CPUOut 
type Pure b = b Bare Identity 
type Partial b = b Covered Last