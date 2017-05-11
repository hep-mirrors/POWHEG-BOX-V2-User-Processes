#!/bin/bash

# example of a run script for a parallel run on ncores cpu's
ncores=8

# number of iterations for the calculation of xgrid at parallelstage 1. It is the old ncall1
nxgriditeration=3

if [ "$1" = "help" ] || [ "$1" = "" ]
then
    echo "*************************************************"
    echo "-- Menu for running powheg --                    "
    echo "Possible running options:                        "
    echo "./run 0 : run in Higgs Effective Theory (HEFT)   "
    echo "./run 1 : run in Born improved HEFT              "
    echo "./run 2 : run in approx. full theory (FTapp)     "
    echo "./run 3 : run in full theory (grids for virtual) "
    echo "./run 4 : test  Born Glover/Bij vs Born from GoSam"
    echo "./run 5 : test  Born Glover/Bij vs Born from Grid"
    echo "*************************************************"
    exit
else
    mode=$1
fi

function runthem {
    for i in $(seq 1 $ncores)
    do
	if [ "$1" = "3" ] || [ "$1" = "5" ]
	then
	    if [ ! -f events.cdf ]
	    then
		ln -s ../events.cdf events.cdf
	    fi
	    if [ ! -f grid.py ]
	    then
		ln -s ../grid.py grid.py
	    fi
	    if [ ! -f grid.in ]
	    then
	       if [ "$1" = "3" ]
	       then
		# THIS NEEDS TO BE CHANGED TO THE FULL THEORY!!!  - GL -
		ln -s ../Virt_EFT.grid grid.in
	       fi
	       if [ "$1" = "5" ]
	       then
		ln -s ../Born.grid grid.in
	       fi
	    fi
	    # launch python script and wait for it to initialise
	    inputseed=$i #$(sed "${i}q;d" pwgseeds.dat)
	    readyfile=pyReadySignal-$(printf %04d $i)
	    pyinputpipe=pyInputPipe-$(printf %04d $i)
	    rm -f $readyfile
	    echo "USING SEED ON LINE $inputseed AND READYFILE $readyfile"
	    python grid.py --seed="$inputseed" &
	    while [ ! -f $readyfile ]
	    do
		sleep 10
	    done

	    # launch powheg
	    ( (echo $i | $prg > $logfile-$i.log 2>&1) ; (echo "exit" > $pyinputpipe) ) &
	    #(echo $i | $prg > $logfile-$i.log 2>&1 && echo "exit" > $pyinputpipe) &
	else
	    echo $i | $prg > $logfile-$i.log 2>&1 &
	fi
    done
}

prg=../pwhg_main

begin=$(date +"%s")

parstage=1
echo "***********************************************"
echo " stage " $parstage
echo "***********************************************"

for xgrid in $(seq 1 $nxgriditeration)
do
    cat powheg.input-save | sed "s/mtdep.*/mtdep $mode/ ; s/parallelstage.*/parallelstage $parstage/ ; s/xgriditeration.*/xgriditeration $xgrid/">powheg.input
    cp powheg.input powheg.input-$parstage-$xgrid
    logfile=run-$parstage-$xgrid
    runthem $mode
    wait
    rm powheg.input
done


parstage=2
echo "***********************************************"
echo " stage " $parstage
echo "***********************************************"

cat powheg.input-save | sed "s/mtdep.*/mtdep $mode/ ; s/parallelstage.*/parallelstage $parstage/">powheg.input
cp powheg.input powheg.input-$parstage
logfile=run-$parstage
runthem $mode
wait
rm powheg.input

termin=$(date +"%s")
difftimelps=$(($termin-$begin))
echo "$(($difftimelps / 60)) minutes and $(($difftimelps % 60)) seconds elapsed since script start."
#exit

parstage=3
echo "***********************************************"
echo " stage " $parstage
echo "***********************************************"

cat powheg.input-save | sed "s/mtdep.*/mtdep $mode/ ; s/parallelstage.*/parallelstage $parstage/">powheg.input
cp powheg.input powheg.input-$parstage
logfile=run-$parstage
runthem $mode
wait
rm powheg.input


parstage=4
echo "***********************************************"
echo " stage " $parstage
echo "***********************************************"

cat powheg.input-save | sed "s/mtdep.*/mtdep $mode/ ; s/parallelstage.*/parallelstage $parstage/ ; s/testplots.*/#testplots 1/">powheg.input
cp powheg.input powheg.input-$parstage
logfile=run-$parstage
runthem $mode
wait

termin=$(date +"%s")
difftimelps=$(($termin-$begin))
echo "$(($difftimelps / 60)) minutes and $(($difftimelps % 60)) seconds elapsed since script start."
