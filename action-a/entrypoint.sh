#!/bin/sh -l

#sh -c "echo Hello world my name is $INPUT_MY_NAME"
git diff HEAD^ HEAD > test.diff
sh -c "addfile -o CSCwb72397 test3.diff test.diff"
