#!/bin/bash


# example of a run script for a parallel run on ncores cpu's
ncores=8

# number of iterations for the calculation of xgrid at parallelstage 1. It is the old ncall1
nxgriditeration=2

function runthem {
for i in $(seq 1 $ncores)
do
echo $i | $prg > $logfile-$i.log 2>&1 &
done
}


prg=../pwhg_main

parstage=1
echo "***********************************************"
echo " stage " $parstage
echo "***********************************************"

for xgrid in $(seq 1 $nxgriditeration)
do

cat powheg.input-save | sed "s/parallelstage.*/parallelstage $parstage/ ; s/xgriditeration.*/xgriditeration $xgrid/">powheg.input
cp powheg.input powheg.input-$parstage-$xgrid
logfile=run-$parstage-$xgrid
runthem
wait
rm powheg.input

done

parstage=2
echo "***********************************************"
echo " stage " $parstage
echo "***********************************************"

cat powheg.input-save | sed "s/parallelstage.*/parallelstage $parstage/">powheg.input
cp powheg.input powheg.input-$parstage
logfile=run-$parstage
runthem
wait
rm powheg.input

parstage=3
echo "***********************************************"
echo " stage " $parstage
echo "***********************************************"

cat powheg.input-save | sed "s/parallelstage.*/parallelstage $parstage/">powheg.input
cp powheg.input powheg.input-$parstage
logfile=run-$parstage
runthem
wait
rm powheg.input


parstage=4
echo "***********************************************"
echo " stage " $parstage
echo "***********************************************"

cat powheg.input-save | sed "s/parallelstage.*/parallelstage $parstage/ ; s/testplots.*/#testplots 1/">powheg.input
cp powheg.input powheg.input-$parstage
logfile=run-$parstage
runthem
wait

