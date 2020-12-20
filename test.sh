#!/bin/bash

#GHC=~/.stack/programs/x86_64-osx/ghc-8.8.4/bin/ghc
#GHC=~/.stack/programs/x86_64-osx/ghc-8.10.3/bin/ghc
GHC=~/Downloads/ghc-9.0/bin/ghc

rm -rf build
$GHC -outputdir build/objs -c lib/Foo/Bar.hs
$GHC -outputdir build/prog-objs/Test -ilib -ibuild/objs -c progs/Test.hs
