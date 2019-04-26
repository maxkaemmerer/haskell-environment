module CustomSpec (spec) where

import Test.Hspec
import Start (doubleMe)

spec :: Spec
spec = do
  describe "doubleMe" $ do
    it "doubles 2 to 4" $ do
      doubleMe 1 `shouldBe` 2
    it "doubles 4 to 8" $ do
      doubleMe 4 `shouldBe` 8