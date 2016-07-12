#!/bin/sh

rm -rf test/test2
rm -rf test2

node index.js &
pid=$!

sleep 1

mkdir -p test2
echo "test" > test2/test.txt
mv test2 test/

sleep 5

kill $pid
