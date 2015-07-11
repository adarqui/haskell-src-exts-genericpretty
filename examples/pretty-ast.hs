module Main where

import           Language.Haskell.Exts
import           Language.Haskell.Exts.GenericPretty.Instances
import           Shared
import           System.Environment
import           System.IO
import           Text.PrettyPrint.GenericPretty

prettyPrintHs :: String -> IO ()
prettyPrintHs path = do
  result <- parseFileWithMode myParseMode path
  case result of
    ParseOk ast            -> putStrLn $ pretty ast
    ParseFailed srcLoc err -> putStrLn $ show err

main :: IO ()
main = do
  argv <- getArgs
  case argv of
    [path] -> prettyPrintHs path
    _      -> putStrLn "usage: pretty-ast <file.hs>"
