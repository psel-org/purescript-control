module Test.Control.Extend where

import Control.Extend (extend)
import Prelude
import Test.Assert (assert)
import Effect (Effect)

foreign import foldl :: forall a b. (b -> a -> b) -> b -> Array a -> b


testExtendArray :: Effect Unit
testExtendArray = do
    assert $ (extend f <<< extend g) a == (extend (f <<< extend g)) a
  where
    a = [1, 2, 3]
    f :: Array Int -> Int
    f = foldl (+) 2
    g :: Array Int -> Int
    g = foldl (*) 3
