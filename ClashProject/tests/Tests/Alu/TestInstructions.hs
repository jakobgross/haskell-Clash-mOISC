module Tests.Alu.TestInstructions where

import Prelude

import qualified Clash.Prelude as CLP

import Test.Tasty
import Test.Tasty.TH
import qualified Test.Tasty.Hedgehog as HH
import qualified Test.Tasty.QuickCheck as QC

import Test.QuickCheck hiding ((===))


import Hedgehog ((===))
import qualified Hedgehog as H
import qualified Hedgehog.Gen as Gen
import qualified Hedgehog.Range as Range


import StandardEntities.Alu
import StandardEntities.Instructions
import CyclicAccurate.CyclicAccurateInterfaces


instance QC.Arbitrary Instruction where
  arbitrary = QC.elements [SubLeq,
              MovLeq ,
              AddLeq ,
              ShlLeq ,
              ShrLeq ,
              OrLeq,
              AndLeq ,
              XorLeq ,
              XnorLeq,
              Pc,
              Mem,
              MemR,
              PcS]

testDeEnCode :: Instruction -> Bool
testDeEnCode i = i == (decodeInstruction $ (encodeInstruction i :: CLP.BitVector 16))

{-
testEnDeCode :: H.Property
testEnDeCode = H.property $ do
  instruction <- Gen.Choices []
  instruction (===) (decodeInstruction $ encodeInstruction instruction)
-}


testAddLeq :: CLP.Signed 16 -> CLP.Signed 16 -> Bool
testAddLeq a b = _data_res (test a b) == _data_res (test b a)
  where
    test x y = alu $ Fsm2Alu {_mcr = AddLeq, _mem_a = x, _mem_b = y, _mem_mem_b = 0, _pc = 0}

testAddLeqOvr :: CLP.Signed 8 -> CLP.Signed 8 -> Bool
testAddLeqOvr a b = flag a b == _overflow (test a b)
  where
    -- extend by two bits since both msb could be 1
    extendTo10 :: CLP.Signed 8 -> CLP.Signed 10
    extendTo10 = CLP.resize
    -- 8bit signed maxbound is 127
    flag x y= if (a > 0) || (b > 0)
        then((extendTo10 x) CLP.+ (extendTo10 y) ) CLP.> (127 :: CLP.Signed 10)
        else ((extendTo10 x) CLP.+ (extendTo10 y) ) CLP.< (-128 :: CLP.Signed 10)
    test x y = alu $ Fsm2Alu {_mcr = AddLeq, _mem_a = x, _mem_b = y, _mem_mem_b = 0, _pc = 0}

-- a-b = -b - (- a)
testSubLeq :: CLP.Signed 16 -> CLP.Signed 16 -> Bool
testSubLeq a b = _data_res (test a b) == _data_res (test (negate b) (negate a))
  where
    test x y = alu $ Fsm2Alu {_mcr = SubLeq, _mem_a = x, _mem_b = y, _mem_mem_b = 0, _pc = 0}

testSubLeqOvr :: CLP.Signed 8 -> CLP.Signed 8 -> Bool
testSubLeqOvr a b = flag a b == _overflow (test a b)
  where
    -- extend by two bits since both msb could be 1
    extendTo10 :: CLP.Signed 8 -> CLP.Signed 10
    extendTo10 = CLP.resize
    -- 8bit signed maxbound is 127 ( x gets subtracted)
    flag x y= if x > 0 && y < 0
        then((extendTo10 y) CLP.- (extendTo10 x) ) CLP.< (-128 :: CLP.Signed 10)
        else ((extendTo10 y) CLP.- (extendTo10 x) ) CLP.> (127 :: CLP.Signed 10)
    test x y = alu $ Fsm2Alu {_mcr = SubLeq, _mem_a = x, _mem_b = y, _mem_mem_b = 0, _pc = 0}


quickCheckTests :: TestTree
quickCheckTests = testGroup "Tests.Alu.TestInstructionsQC" [
  QC.testProperty "testDeEnCode" testDeEnCode,
  QC.testProperty "testAddLeq" testAddLeq,
  QC.testProperty "testAddLeqOvr" testAddLeqOvr,
  QC.testProperty "testSubLeq" testSubLeq,
  QC.testProperty "testSubLeqOvr" testSubLeqOvr
  ]


tests :: TestTree
tests = testGroup "Tests" [quickCheckTests]

main :: IO ()
main = defaultMain tests
