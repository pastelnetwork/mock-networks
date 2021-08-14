#!/bin/sh

echo 'Using `pastel-cli` from ' $1 ' With datadir at ' $2

for i in $(seq 0 11); do
  $1/pastel-cli -datadir=$2 masternode start-alias mn${i}
done