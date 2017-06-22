#!/bin/bash

dir=`pwd`

# We record in this file the time when each step is performed.
> Timings.txt


# First compile the pwhg_main executable in the ../ directory
#
cd ../
make pwhg_main
cd $dir

# ***********************************************************************
# ****** Beginning of parallel runs for the generation of the events ****
# ***********************************************************************

# two stages of importance sampling grid calculation
for igrid in {1..2}
do

   (echo -n st1 xg$igrid ' ' ; date ) >> Timings.txt

   cat powheg.input-save | sed "s/xgriditeration.*/xgriditeration $igrid/ ; s/parallelstage.*/parallelstage 1/" > powheg.input

   for i in {1..64}
   do
      echo $i | ../pwhg_main > run-st1-xg$igrid-$i.log 2>&1 &
   done
   wait

done



# compute NLO and upper bounding envelope for underlying born comfigurations
cat powheg.input-save | sed 's/parallelstage.*/parallelstage 2/ ' > powheg.input
(echo -n st2 ' ' ; date ) >> Timings.txt
for i in {1..64}
do
   echo $i | ../pwhg_main > run-st2-$i.log 2>&1 &
done
wait


# compute upper bounding coefficients for radiation
cat powheg.input-save | sed 's/parallelstage.*/parallelstage 3/' > powheg.input
(echo -n st3 ' ' ; date ) >> Timings.txt
for i in {1..64}
do
   echo $i | ../pwhg_main > run-st3-$i.log 2>&1 &
done
wait



# generate events 
cat powheg.input-save | sed 's/parallelstage.*/parallelstage 4/' > powheg.input
(echo -n st4 ' ' ; date ) >> Timings.txt
for i in {1..64}
do
   echo $i | ../pwhg_main > run-st4-$i.log 2>&1 &
done
wait

(echo -n end ' ' ; date ) >> Timings.txt

# ***********************************************************************
# ****** End of parallel runs for the generation of the events ****
# ***********************************************************************



# ***********************************************************************
# ****** Beginning of reweighting runs for the inclusion of mass effects
# ****** in the HJ-MiNLO sample                                     
# ***********************************************************************

# now concatenate all .lhe files
cat pwgevents-00*.lhe | sed '/<\/LesHouchesEvents>/d' > pwgevents.lhe

# compile the reweighter program
cd ..
make nnlopsreweighter-newrwgt
cd $dir

# Run the nnlopsreweighter program

../nnlopsreweighter-newrwgt

# at the end we have the pwgevents-nnlops.lhe file,
# that has the additional weights for the nnlops reweighted
# results.
