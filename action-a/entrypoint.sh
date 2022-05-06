#!/bin/sh -l

#sh -c "echo Hello world my name is $INPUT_MY_NAME"
sh -c "addfile -o CSCwb72397 test1.diff << git diff HEAD^ HEAD"
