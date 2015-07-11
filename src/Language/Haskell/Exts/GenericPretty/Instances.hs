{-# OPTIONS_GHC -fno-warn-orphans #-}

module Language.Haskell.Exts.GenericPretty.Instances (
) where

import           Language.Haskell.Exts.Syntax
import           Text.PrettyPrint.GenericPretty

instance Out Module
instance Out ModuleName
instance Out ExportSpec
instance Out Namespace
instance Out CName
instance Out Name
instance Out QName
instance Out SpecialCon
instance Out Boxed
instance Out ImportDecl
instance Out ImportSpec
instance Out SrcLoc
instance Out WarningText
instance Out Decl
instance Out Activation
instance Out Annotation
instance Out Exp
instance Out Alt
instance Out Rhs
instance Out GuardedRhs
instance Out Stmt
instance Out Binds
instance Out IPBind
instance Out IPName
instance Out Pat
instance Out Sign
instance Out Literal
instance Out PXAttr
instance Out XName
instance Out PatField
instance Out RPat
instance Out RPatOp
instance Out Asst
instance Out BangType
instance Out Kind
instance Out Promoted
instance Out TyVarBind
instance Out Splice
instance Out Bracket
instance Out FieldUpdate
instance Out QOp
instance Out QualStmt
instance Out XAttr
instance Out Assoc
instance Out BooleanFormula
instance Out CallConv
instance Out ClassDecl
instance Out DataOrNew
instance Out FunDep
instance Out GadtDecl
instance Out InstDecl
instance Out QualConDecl
instance Out ConDecl
instance Out Match
instance Out Op
instance Out Overlap
instance Out Rule
instance Out RuleVar
instance Out Safety
instance Out TypeEqn
instance Out ModulePragma
instance Out Tool

deriving instance Generic Type
instance Out Type
