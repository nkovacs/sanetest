#!/bin/sh

rm -rf test/test2
rm -rf test2

mkdir -p test/test2/test3
echo "test file" > test/test2/test3/test.txt

node index.js &
pid=$!

sleep 1

echo "testing edit"
echo "test again" >> test/test2/test3/test.txt

sleep 2

echo "testing remove of parent directory"
rm -rf test/test2

sleep 2

echo "testing move of directory with matching file in subdirectory"

mkdir -p test2/test3
echo "test" > test2/test3/test.txt
mv test2 test/

sleep 2

echo "testing write to moved file in subdirectory"
echo "test" >> test/test2/test3/test.txt

sleep 2

echo "removing"
rm -rf test/test2

sleep 2

echo "testing move of directory with matching file"

mkdir -p test2
echo "test" > test2/test.txt
mv test2 test/

sleep 2

echo "testing write to moved file"
echo "test" > test/test2/test.txt

sleep 2

echo "removing"
rm -rf test/test2

sleep 2

echo "creating nested file"

mkdir -p test/test2/
echo "test" > test/test2/test.txt

sleep 2

echo "removing"
rm -rf test/test2

sleep 2

echo "creating nested file 2 directories deep"

mkdir -p test/test2/test3
echo "test" > test/test2/test3/test.txt

sleep 2

echo "removing"
rm -rf test/test2

sleep 2

echo "done"

kill $pid
