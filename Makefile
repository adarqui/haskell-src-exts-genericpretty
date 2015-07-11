all: init
	cabal install -j

init:
	cabal sandbox init

docs:
	cabal haddock --hyperlink-source

examples: all
	cabal install -fexamples
