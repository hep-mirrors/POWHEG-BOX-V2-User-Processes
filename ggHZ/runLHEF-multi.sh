#!/bin/bash


prg=../lhef_analysis

#for label in 11 1H H1 HH 12 21 22
#do
# case $label in
# 11) rfac=1 ; ffac=1 ;;
# 1H) rfac=1 ; ffac=0.5 ;;
# H1) rfac=0.5 ; ffac=1 ;;
# HH) rfac=0.5 ; ffac=0.5 ;;
# 12) rfac=1 ; ffac=2 ;;
# 21) rfac=2 ; ffac=1 ;;
# 22) rfac=2 ; ffac=2 ;;
# esac

#cat powheg.input-save | sed "s/renscfact.*/renscfact $rfac/ ; s/facscfact.*/facscfact $ffac/ " > powheg.input

#echo nohad 1 >>  powheg.input

for file in pwgevents-*.lhe
do
log=log`echo $file | sed 's/pwgevents// ; s/lhe//'`log
echo $file | $prg > $log &
done

wait

for i in {1..15}
do
(echo 1 ; ls -c1 pwgLHEF_analysis-00*-W$i.top ; echo "") | mergedata
mv fort.12 pwgLHEF_analysis-W$i.top
done
