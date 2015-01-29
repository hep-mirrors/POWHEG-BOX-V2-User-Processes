#!/bin/bash

> Timings.txt


# First compile the pwhg_main executable in the ../ directory
#

# two stages of importance sampling grid calculation
for igrid in {1..2}
do

(echo -n st1 xg$igrid ' ' ; date ) >> Timings.txt

cat powheg.input-save | sed "s/xgriditeration.*/xgriditeration $igrid/ ; s/parallelstage.*/parallelstage 1/" > powheg.input

for i in {1..48}
do
echo $i | ../pwhg_main > run-st1-xg$igrid-$i.log 2>&1 &
done
wait

done



# compute NLO and upper bounding envelope for underlying born comfigurations
cat powheg.input-save | sed 's/parallelstage.*/parallelstage 2/ ' > powheg.input
(echo -n st2 ' ' ; date ) >> Timings.txt
for i in {1..48}
do
echo $i | ../pwhg_main > run-st2-$i.log 2>&1 &
done
wait


# compute upper bounding coefficients for radiation
cat powheg.input-save | sed 's/parallelstage.*/parallelstage 3/' > powheg.input
(echo -n st3 ' ' ; date ) >> Timings.txt
for i in {1..48}
do
echo $i | ../pwhg_main > run-st3-$i.log 2>&1 &
done
wait



# generate events 
cat powheg.input-save | sed 's/parallelstage.*/parallelstage 4/' > powheg.input
(echo -n st4 ' ' ; date ) >> Timings.txt
for i in {1..48}
do
echo $i | ../pwhg_main > run-st4-$i.log 2>&1 &
done
wait

(echo -n end ' ' ; date ) >> Timings.txt




