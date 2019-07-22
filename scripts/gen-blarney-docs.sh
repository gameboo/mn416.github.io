#!/bin/bash

rm -rf blarney
git clone https://github.com/mn416/blarney
pushd .
cd blarney/Haskell/
haddock --html -o ../../../blarney \
  --source-module=https://github.com/mn416/blarney/blob/master/Haskell/%{FILE} \
  --source-entity=https://github.com/mn416/blarney/blob/master/Haskell/%{FILE}#L%{LINE} \
  Blarney.hs \
  Blarney/RAM.hs \
  Blarney/Queue.hs \
  Blarney/BitPat.hs \
  Blarney/BitScan.hs \
  Blarney/Stream.hs \
  Blarney/Connectable.hs \
  Blarney/Option.hs \
  Blarney/PulseWire.hs \
  Blarney/SourceSink.hs
popd
rm -rf blarney
