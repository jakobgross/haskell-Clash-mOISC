import Prelude

import Test.Tasty

import qualified Tests.Alu.TestInstructions

main :: IO ()
main = defaultMain $ testGroup "."
  [
    Tests.Alu.TestInstructions.tests
  ]
