module Example.Project (topEntity, plus) where

import Clash.Prelude

-- | Add two numbers. Example:
--
-- >>> plus 3 5
-- 8
plus :: Signed 8 -> Signed 8 -> Signed 8
plus a b = a + b

-- | 'topEntity' is Clash's equivalent of 'main' in other programming
-- languages. Clash will look for it when compiling 'Example.Project'
-- and translate it to HDL. While polymorphism can be used freely in
-- Clash projects, a 'topEntity' must be monomorphic and must use non-
-- recursive types. Or, to put it hand-wavily, a 'topEntity' must be
-- translatable to a static number of wires.
topEntity :: Signed 8 -> Signed 8 -> Signed 8
topEntity = plus


testNot5 :: (Foldable t, Eq a, Num a) => t a -> Bool
let testNot5 l = all ( /= 5) l  
verboseCheck testNot5
Passed:
[1,-2]
Failed:
[-4,0,-12,12,10,2,4,10,7,5]
Failed:
[2,4,10,7,5]
Failed:
[10,7,5]
Failed:
[7,5]
Failed:
[5]
Passed:
[3]
Passed:
[4]
*** Failed! Falsified (after 14 tests and 4 shrinks):
[5]