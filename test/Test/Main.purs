module Test.Main (main) where

import Effect (Effect)
import Test.Control.Extend (testExtendArray)
import Test.Control.Lazy (testLazy)
import Prelude

main :: Effect Unit
main = do
  testLazy
  testExtendArray
