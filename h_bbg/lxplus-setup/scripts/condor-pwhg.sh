#!/bin/bash


### load personal settings
source ~/.bashrc


### arguments
iseed=$2  # seed for the run (determined from ProcId of the HT Condor: 0..Njobs)
stage=$3  # stage of the POWHEG run: 1..4
igrid=$4  # grid-iteration of the POWHEG run (relevant for stage=1 only)
shift=$5  # shift of the seed


### directories
master=XXMASTER  # master directory
output=XXOUTPUT  # output directory


### seed to string conversion
iseed=$((iseed+1+shift))
xxseed=`printf "%04d" $iseed`
xxstag=`printf "%02d" $stage`
xxgrid=`printf "%02d" $igrid`


### copy and extract files from previous stages
echo "########################################################################"
echo "@@ copying results from previous stages"
xrdcp $master/tarball/pwhg-pack-*.tar.gz .
for file in pwhg-pack-*.tar.gz; do
    echo "-------------------------------------------------------"
    tar -zxvf $file
done
echo ""
echo ""
echo ""


### copy executable and powheg.input-save
echo "########################################################################"
echo "@@@ copying input card and executable"
xrdcp $master/input/pwhg_main .
chmod +x ./pwhg_main
xrdcp $master/input/powheg.input-save .
xrdcp $master/input/pwgseeds.dat .
echo ""
echo ""
echo ""


### modify input file
cp powheg.input-save powheg.input
sed -i "s/XSTAGE/$stage/g" powheg.input
sed -i "s/XXGRID/$igrid/g" powheg.input


### running the pwhg_main executable
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@ INPUT CARD:"
cat powheg.input
echo ""
echo ""
echo ""

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@ START: [`date`]"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

#>> record start time
timestart=`date +%s`

#>> run programme
echo $iseed | ./pwhg_main

#>> record finish time
timefinish=`date +%s`

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@ FINISH: [`date`]"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

#>> print out duration of the run
duration=$((timefinish-timestart))
echo "@@@@@ DURATION: time= ${duration} seconds"

#>> list of files in the run directory
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@ LIST OF FILES IN THE RUN DIRECTORY:"
ls
echo ""
echo ""
echo ""


### copy back results
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@ COPYING BACK RESULTS:"
xdirout=results-${xxstag}-${xxgrid}
mkdir -vp ${output}
mkdir -vp ${output}/${xdirout}

if [ $stage -eq 1 ]; then
    if [ $igrid -eq 1 ]; then
        echo "@@@ copying results of stage 1-1"
        xrdcp pwgcounters-st1-${xxseed}.dat      ${output}/${xdirout}/
        xrdcp pwggridinfo-btl-xg1-${xxseed}.dat  ${output}/${xdirout}/
    elif [ $igrid -eq 2 ]; then
        echo "@@@ copying results of stage 1-2"
        xrdcp pwgcounters-st1-${xxseed}.dat      ${output}/${xdirout}/
        xrdcp pwggridinfo-btl-xg2-${xxseed}.dat  ${output}/${xdirout}/
    elif [ $igrid -eq 3 ]; then
        echo "@@@ copying results of stage 1-3"
        xrdcp pwgcounters-st1-${xxseed}.dat      ${output}/${xdirout}/
        xrdcp pwggridinfo-btl-xg3-${xxseed}.dat  ${output}/${xdirout}/
    fi
elif [ $stage -eq 2 ]; then
    rm pwgcounters-st1-????.dat
    rm pwggridinfo-btl-xg?-????.dat
    echo "@@@ copying results of stage 2"
    xrdcp pwg-${xxseed}-stat.dat         ${output}/${xdirout}/
    xrdcp pwgcounters-st2-${xxseed}.dat  ${output}/${xdirout}/
    xrdcp pwggrid-${xxseed}.dat          ${output}/${xdirout}/
    xrdcp pwg-st2-${xxseed}-stat.dat     ${output}/${xdirout}/
    xrdcp pwg-${xxseed}-NLO.top          ${output}/${xdirout}/
    echo "$$$$$$$$$$$$$$$$$$$$$$$$$ make sure it is copied!"
    echo ">>> check size:"
    ls -l *-${xxseed}*dat
    list=`ls *-${xxseed}*dat`
    for f in $list pwg-${xxseed}-NLO.top; do
        counter=0
        while : ; do
            echo "... another attempt $counter"
            xrdcp $f ${output}/${xdirout}/
            counter=$((counter+1))
            sleep 2.5
            [[ -s ${output}/${xdirout}/$f ]] || break
            [[ $counter -eq 48 ]] || break
        done
    done
elif [ $stage -eq 3 ]; then
    rm pwgcounters-st1-????.dat
    rm pwgcounters-st2-????.dat
    rm pwggridinfo-btl-xg?-????.dat
    rm pwggrid-????.dat
    rm pwg-st2-????-stat.dat
    rm pwg-????-stat.dat
    echo "@@@ copying results of stage 3"
    xrdcp pwgcounters-st3-${xxseed}.dat  ${output}/${xdirout}/
    xrdcp pwg-st3-${xxseed}-stat.dat     ${output}/${xdirout}/
    xrdcp pwgubound-${xxseed}.dat        ${output}/${xdirout}/
    echo "$$$$$$$$$$$$$$$$$$$$$$$$$ make sure it is copied!"
    echo ">>> check size:"
    ls -l *-${xxseed}*dat
    list=`ls *-${xxseed}*dat`
    for f in $list; do
        counter=0
        while : ; do
            echo "... another attempt $counter"
            xrdcp $f ${output}/${xdirout}/
            counter=$((counter+1))
            sleep 2.5
            [[ -s ${output}/${xdirout}/$f ]] || break
            [[ $counter -eq 48 ]] || break
        done
    done
elif [ $stage -eq 4 ]; then
    rm pwgcounters-st1-????.dat
    rm pwgcounters-st2-????.dat
    rm pwggridinfo-btl-xg?-????.dat
    rm pwggrid-????.dat
    rm pwg-st2-????-stat.dat
    rm pwg-????-stat.dat
    rm pwgcounters-st3-????.dat
    rm pwg-st3-????-stat.dat
    rm pwgubound-????.dat
    echo "@@@ copying results of stage 4"
    xrdcp pwgevents-${xxseed}.lhe            ${output}/${xdirout}/
    xrdcp pwgcounters-st4-${xxseed}.dat      ${output}/${xdirout}/
    xrdcp pwgpwhgalone-output${xxseed}.top   ${output}/${xdirout}/
    echo "$$$$$$$$$$$$$$$$$$$$$$$$$ make sure it is copied!"
    echo ">>> check size:"
    ls -l *-${xxseed}*dat
    list=`ls *-${xxseed}*dat`
    for f in $list pwgpwhgalone-output${xxseed}.top; do
        counter=0
        while : ; do
            echo "... another attempt $counter"
            xrdcp $f ${output}/${xdirout}/
            counter=$((counter+1))
            sleep 2.5
            [[ -s ${output}/${xdirout}/$f ]] || break
            [[ $counter -eq 48 ]] || break
        done
    done
fi
echo ""
echo ""
echo ""


### exit script
exit 0
