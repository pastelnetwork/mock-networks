#!/bin/sh

NETWORK_DIR=$2

number=$3
echo $number
if [ -z "$number" ]
then
number=18
fi
echo $number

echo 'Using `pastel-cli` from ' $1 ' With datadir at ' $NETWORK_DIR

for i in $(seq 0 $number); do
  $1/pastel-cli -datadir=$NETWORK_DIR/node$i stop
done

sleep 2
echo "\n======= Running pasteld instances ========="
ps -afx | grep pasteld | grep -v grep