#!/bin/bash

rm -rf blarney
git clone -b refactor https://github.com/mn416/blarney
pushd .
cd blarney/Haskell/
haddock --html -o ../../../blarney \
  Blarney.hs \
  Blarney/RAM.hs \
  Blarney/Queue.hs
popd
rm -rf blarney
