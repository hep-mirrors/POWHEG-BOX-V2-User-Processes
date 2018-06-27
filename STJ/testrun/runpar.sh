#!/bin/bash

nCores=48

> Timings.txt

if [ ! -e ../pwhg_main ] ; then
echo -e "\nCould not find needed ../pwhg_main executable"
echo -e "\nPlease run make and try again ..."
exit
fi

if [ ! -e ../rw ] ; then
echo -e "\nCould not find needed ../rw executable"
echo -e "\nPlease run make rw it and try again ..."
exit
fi

# First compile the pwhg_main and rw executables in the ../ directory
#

# two stages of importance sampling grid calculation
for igrid in {1..2}
do

(echo -n st1 xg$igrid ' ' ; date ) >> Timings.txt

cat powheg.input-save | sed "s/xgriditeration.*/xgriditeration $igrid/ ; s/parallelstage.*/parallelstage 1/" > powheg.input

for i in `seq 1 $nCores`
do
echo $i | ../pwhg_main > run-st1-xg$igrid-$i.log 2>&1 &
done
wait

done



# compute NLO and upper bounding envelope for underlying born comfigurations
cat powheg.input-save | sed 's/parallelstage.*/parallelstage 2/ ' > powheg.input
(echo -n st2 ' ' ; date ) >> Timings.txt
for i in `seq 1 $nCores`
do
echo $i | ../pwhg_main > run-st2-$i.log 2>&1 &
done
wait


# compute upper bounding coefficients for radiation
cat powheg.input-save | sed 's/parallelstage.*/parallelstage 3/' > powheg.input
(echo -n st3 ' ' ; date ) >> Timings.txt
for i in `seq 1 $nCores`
do
echo $i | ../pwhg_main > run-st3-$i.log 2>&1 &
done
wait



# generate events 
cat powheg.input-save | sed 's/parallelstage.*/parallelstage 4/' > powheg.input
(echo -n st4 ' ' ; date ) >> Timings.txt
for i in `seq 1 $nCores`
do
echo $i | ../pwhg_main > run-st4-$i.log 2>&1 &
done
wait

(echo -n end ' ' ; date ) >> Timings.txt


# reweight generated events with the Minlo' tuning 
#
function char {
        case $1 in
            [1-9])                echo 000$1 ;;
            [1-9][0-9])           echo  00$1 ;;
            [1-9][0-9][0-9])      echo   0$1 ;;
            [1-9][0-9][0-9][0-9]) echo    $1 ;;
        esac
}
#
ttype=`grep ttype powheg.input-save  | sed "s/ttype//" | sed "s/\!.*//" | xargs`
#
(echo -n rw ' ' ; date ) >> Timings.txt
for i in `seq 1 $nCores`
do
ch=`char $i`
echo "Processing event file : pwgevents-$ch.lhe"
echo -e "pwgevents-$ch.lhe \n 1 \n $ttype \n 1" | ../rw > run-rw-$i.log 2>&1 &
done
wait

(echo -n end ' ' ; date ) >> Timings.txt

# Now all events are available.

