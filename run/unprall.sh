#!/bin/bash

for i in *.fcl.bz2
do
echo $i
unpackr.bat $i
done
