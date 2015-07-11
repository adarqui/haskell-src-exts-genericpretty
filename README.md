# haskell-src-exts-genericpretty

This library simply provides some GenericPretty helpers for haskell-src-exts, notably 'Out' instances for everything in Language.Haskell.Exts.Syntax.

## building

```
make
```

## building examples: pretty-ast

```
make examples
```

## output example

"ugly" (normal show output):

```
./.cabal-sandbox/bin/ugly-ast examples/TestModule.hs
Module (SrcLoc "" 1 1) (ModuleName "TestModule") [] Nothing (Just [EThingAll (UnQual (Ident "DataName")),EAbs (UnQual (Ident "TypeSynonymBool")),EAbs (UnQual (Ident "ClassName")),EVar NoNamespace (UnQual (Ident "functionBool"))]) [ImportDecl {importLoc = SrcLoc "" 8 1, importModule = ModuleName "Prelude", importQualified = False, importSrc = False, importSafe = False, importPkg = Nothing, importAs = Nothing, importSpecs = Nothing}] [DataDecl (SrcLoc "" 10 1) DataType [] (Ident "DataName") [UnkindedVar (Ident "dataVariable")] [QualConDecl (SrcLoc "" 10 30) [] [] (ConDecl (Ident "DataName") [TyVar (Ident "dataVariable"),TyCon (UnQual (Ident "Bool"))])] [(UnQual (Ident "Show"),[]),(UnQual (Ident "Eq"),[])],TypeDecl (SrcLoc "" 12 1) (Ident "TypeSynonymBool") [] (TyCon (UnQual (Ident "Bool"))),ClassDecl (SrcLoc "" 14 1) [] (Ident "ClassName") [UnkindedVar (Ident "classVariable")] [] [ClsDecl (TypeSig (SrcLoc "" 15 3) [Ident "method"] (TyVar (Ident "classVariable")))],InstDecl (SrcLoc "" 17 1) Nothing [] [] (UnQual (Ident "ClassName")) [TyCon (UnQual (Ident "Bool"))] [InsDecl (PatBind (SrcLoc "" 18 3) (PVar (Ident "method")) (UnGuardedRhs (Con (UnQual (Ident "True")))) (BDecls []))],TypeSig (SrcLoc "" 20 1) [Ident "functionBool"] (TyFun (TyVar (Ident "a")) (TyCon (UnQual (Ident "Bool")))),FunBind [Match (SrcLoc "" 21 1) (Ident "functionBool") [PWildCard] Nothing (UnGuardedRhs (Con (UnQual (Ident "True")))) (BDecls [])],TypeSig (SrcLoc "" 23 1) [Ident "functionInt"] (TyFun (TyVar (Ident "a")) (TyCon (UnQual (Ident "Int")))),FunBind [Match (SrcLoc "" 24 1) (Ident "functionInt") [PWildCard] Nothing (UnGuardedRhs (Lit (Int 0))) (BDecls [])],TypeSig (SrcLoc "" 26 1) [Ident "functionId"] (TyFun (TyVar (Ident "a")) (TyVar (Ident "a"))),FunBind [Match (SrcLoc "" 27 1) (Ident "functionId") [PVar (Ident "a")] Nothing (UnGuardedRhs (Var (UnQual (Ident "a")))) (BDecls [])]]
```

"pretty" (GenericPretty output):

```
Module (SrcLoc
              {srcFilename = "",
               srcLine = 1,
               srcColumn = 1})
       (ModuleName "TestModule")
       []
       Nothing
       (Just [EThingAll (UnQual (Ident "DataName")),
              EAbs (UnQual (Ident "TypeSynonymBool")),
              EAbs (UnQual (Ident "ClassName")),
              EVar NoNamespace (UnQual (Ident "functionBool"))])
       [ImportDecl {importLoc = SrcLoc {srcFilename = "",
                                        srcLine = 8,
                                        srcColumn = 1},
                    importModule = ModuleName "Prelude",
                    importQualified = False,
                    importSrc = False,
                    importSafe = False,
                    importPkg = Nothing,
                    importAs = Nothing,
                    importSpecs = Nothing}]
       [DataDecl (SrcLoc
                        {srcFilename = "",
                         srcLine = 10,
                         srcColumn = 1})
                 DataType
                 []
                 (Ident "DataName")
                 [UnkindedVar (Ident "dataVariable")]
                 [QualConDecl (SrcLoc
                                     {srcFilename = "",
                                      srcLine = 10,
                                      srcColumn = 30})
                              []
                              []
                              (ConDecl (Ident "DataName")
                                       [TyVar (Ident "dataVariable"),
                                        TyCon (UnQual (Ident "Bool"))])]
                 [(UnQual (Ident "Show"), []),
                  (UnQual (Ident "Eq"), [])],
        TypeDecl (SrcLoc
                        {srcFilename = "",
                         srcLine = 12,
                         srcColumn = 1})
                 (Ident "TypeSynonymBool")
                 []
                 (TyCon (UnQual (Ident "Bool"))),
        ClassDecl (SrcLoc
                         {srcFilename = "",
                          srcLine = 14,
                          srcColumn = 1})
                  []
                  (Ident "ClassName")
                  [UnkindedVar (Ident "classVariable")]
                  []
                  [ClsDecl (TypeSig (SrcLoc
                                           {srcFilename = "",
                                            srcLine = 15,
                                            srcColumn = 3})
                                    [Ident "method"]
                                    (TyVar (Ident "classVariable")))],
        InstDecl (SrcLoc
                        {srcFilename = "",
                         srcLine = 17,
                         srcColumn = 1})
                 Nothing
                 []
                 []
                 (UnQual (Ident "ClassName"))
                 [TyCon (UnQual (Ident "Bool"))]
                 [InsDecl (PatBind (SrcLoc
                                          {srcFilename = "",
                                           srcLine = 18,
                                           srcColumn = 3})
                                   (PVar (Ident "method"))
                                   (UnGuardedRhs (Con (UnQual (Ident "True"))))
                                   (BDecls []))],
        TypeSig (SrcLoc
                       {srcFilename = "",
                        srcLine = 20,
                        srcColumn = 1})
                [Ident "functionBool"]
                (TyFun (TyVar (Ident "a"))
                       (TyCon (UnQual (Ident "Bool")))),
        FunBind [Match (SrcLoc
                              {srcFilename = "",
                               srcLine = 21,
                               srcColumn = 1})
                       (Ident "functionBool")
                       [PWildCard]
                       Nothing
                       (UnGuardedRhs (Con (UnQual (Ident "True"))))
                       (BDecls [])],
        TypeSig (SrcLoc
                       {srcFilename = "",
                        srcLine = 23,
                        srcColumn = 1})
                [Ident "functionInt"]
                (TyFun (TyVar (Ident "a"))
                       (TyCon (UnQual (Ident "Int")))),
        FunBind [Match (SrcLoc
                              {srcFilename = "",
                               srcLine = 24,
                               srcColumn = 1})
                       (Ident "functionInt")
                       [PWildCard]
                       Nothing
                       (UnGuardedRhs (Lit (Int 0)))
                       (BDecls [])],
        TypeSig (SrcLoc
                       {srcFilename = "",
                        srcLine = 26,
                        srcColumn = 1})
                [Ident "functionId"]
                (TyFun (TyVar (Ident "a")) (TyVar (Ident "a"))),
        FunBind [Match (SrcLoc
                              {srcFilename = "",
                               srcLine = 27,
                               srcColumn = 1})
                       (Ident "functionId")
                       [PVar (Ident "a")]
                       Nothing
                       (UnGuardedRhs (Var (UnQual (Ident "a"))))
                       (BDecls [])]]
```
