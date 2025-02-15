{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
{-# OPTIONS_GHC -Wno-partial-fields #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Main where

import qualified Data.ByteString.Lazy as LBS
import qualified Language.Wasm as Wasm
import qualified Language.Wasm.Script as Script


type Filename = String

-- wasm script
wast :: Filename
wast = "array_test2.wast"

main :: IO ()
main = do
  test <- LBS.readFile ("tests/abhi_test/" ++ wast)
  case Wasm.parseScript test of
    Right script -> 
      Script.runScript (\msg assert -> putStrLn ("Failed assert: " ++ msg ++ ". Assert " ++ show assert)) script
    Left error ->
          putStrLn $ "Failed to parse with error: " ++ show error
  




-- main :: IO ()
-- main = do
--   files <- filter (List.isSuffixOf ".wast") <$> Directory.listDirectory "tests/spec"
--   -- let files = ["const.wast"]
--   scriptTestCases <- (`mapM` files) $ \file -> do
--     test <- LBS.readFile ("tests/spec/" ++ file)
--     return $ testCase file $ do
--       case Wasm.parseScript test of
--         Right script -> 
--           Script.runScript (\msg assert -> assertFailure ("Failed assert: " ++ msg ++ ". Assert " ++ show assert)) script
--         Left error ->
--           assertFailure $ "Failed to parse with error: " ++ show error
--   defaultMain $ testGroup "Wasm Core Test Suit" scriptTestCases
