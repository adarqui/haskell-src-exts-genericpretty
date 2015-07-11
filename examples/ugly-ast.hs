module Main where

import           Language.Haskell.Exts
import           Language.Haskell.Exts.GenericPretty.Instances
import           Shared
import           System.Environment
import           System.IO

uglyPrintHs :: String -> IO ()
uglyPrintHs path = do
  result <- parseFileWithMode myParseMode path
  case result of
    ParseOk ast            -> putStrLn $ show ast
    ParseFailed srcLoc err -> putStrLn $ show err

main :: IO ()
main = do
  argv <- getArgs
  case argv of
    [path] -> uglyPrintHs path
    _      -> putStrLn "usage: pretty-ast <file.hs>"
