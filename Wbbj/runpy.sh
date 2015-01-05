#!/bin/bash


prg=../main-PYTHIA-lhef

cp powheg.input-save powheg.input

echo 'nohad 1' >> powheg.input
#echo 'changescalup 1' >> powheg.input

\rm pwg-*-POWHEG+PYTHIA-output.top > /dev/null  2>&1

for file in pwgevents-*.lhe
do
log=log-PY`echo $file | sed 's/pwgevents// ; s/lhe//'`log
echo $file | $prg > $log &
done

wait

(echo 1 ; ls -c1 pwg-0*POWHEG+PYTHIA-output.top ; echo "") | mergedata

mv fort.12 pwgPOWHEG+PYTHIA-output_nohad.top


