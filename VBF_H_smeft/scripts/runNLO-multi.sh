#!/bin/bash


for i in {1..9}
do
(echo 1 ; ls -c1 pwg-0*-NLO-W$i.top ; echo "") | mergedata
mv fort.12 pwgNLO-W$i.top
done
