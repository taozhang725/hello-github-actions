#!/bin/sh -l

#sh -c "echo Hello world my name is $INPUT_MY_NAME"
echo "new diff" > test.diff
#sh -c "/usr/cisco/bin/addfile -o CSCwb72397 test3.diff test.diff"
sh -c "ls /"
sh -c "addfile -o CSCwb72397 test3.diff test.diff"
