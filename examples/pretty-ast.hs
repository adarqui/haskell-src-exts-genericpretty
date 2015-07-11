module Main where

import           Language.Haskell.Exts
import           Language.Haskell.Exts.Extension
import           Language.Haskell.Exts.GenericPretty.Instances
import           System.Environment
import           System.IO
import           Text.PrettyPrint.GenericPretty

myParseMode :: ParseMode
myParseMode = ParseMode {
    parseFilename = [],
    baseLanguage = Haskell2010,
    extensions = map EnableExtension myExtensions,
    ignoreLinePragmas = False,
    ignoreLanguagePragmas = False,
    fixities = Nothing
  }

myExtensions :: [KnownExtension]
myExtensions = [
     Trustworthy
    ,Safe
    ,CPP
    ,PostfixOperators
    ,TupleSections
    ,PatternGuards
    ,UnicodeSyntax
    ,MagicHash
    ,ExistentialQuantification
    ,KindSignatures
    ,EmptyDataDecls
    ,ParallelListComp
    ,TransformListComp
    ,ForeignFunctionInterface
    ,UnliftedFFITypes
    ,InterruptibleFFI
    ,CApiFFI
    ,GHCForeignImportPrim
    ,LiberalTypeSynonyms
    ,PolymorphicComponents
    ,Rank2Types
    ,RankNTypes
    ,ImpredicativeTypes
    ,TypeOperators
    ,ExplicitNamespaces
    ,RecursiveDo
    ,DoRec
    ,Arrows
    ,ParallelArrays
    ,TemplateHaskell
    ,QuasiQuotes
    ,ImplicitPrelude
    ,RecordWildCards
    ,NamedFieldPuns
    ,RecordPuns
    ,DisambiguateRecordFields
    ,OverloadedStrings
    ,GADTs
    ,ViewPatterns
    ,TypeFamilies
    ,BangPatterns
    ,MonomorphismRestriction
    ,NPlusKPatterns
    ,DoAndIfThenElse
    ,RebindableSyntax
    ,ConstraintKinds
    ,PolyKinds
    ,DataKinds
    ,InstanceSigs
    ,MonoPatBinds
    ,ExplicitForAll
    ,DatatypeContexts
    ,LambdaCase
    ,MultiWayIf
    ,MonoLocalBinds
    ,RelaxedPolyRec
    ,ExtendedDefaultRules
    ,ImplicitParams
    ,ScopedTypeVariables
    ,PatternSignatures
    ,UnboxedTuples
    ,StandaloneDeriving
    ,DeriveDataTypeable
    ,DeriveFunctor
    ,DeriveTraversable
    ,DeriveFoldable
    ,DeriveGeneric
    ,DefaultSignatures
    ,TypeSynonymInstances
    ,FlexibleContexts
    ,FlexibleInstances
    ,ConstrainedClassMethods
    ,MultiParamTypeClasses
    ,FunctionalDependencies
    ,GeneralizedNewtypeDeriving
    ,OverlappingInstances
    ,UndecidableInstances
    ,IncoherentInstances
    ,PackageImports
  ]

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
