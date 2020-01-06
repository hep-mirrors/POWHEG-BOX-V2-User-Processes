#!/bin/bash

## POWHEG settings
xstage=$1   # stage of PWHG run
xgrid=$2    # grid iteration (important for stage=1, leave xgrid=1 otherwise)
xshift=0   # shift of the seed

## CLUSTER settings
queuetype=testmatch  # type of the cluster queue
njobs=128            # number of jobs submitted to cluster


### submission
cp input/pwhg.sub ./temp.sub
sed -i "s/XSTAGE/$xstage/g"  temp.sub
sed -i "s/XGRID/$xgrid/g"  temp.sub
sed -i "s/XSHIFT/$xshift/g"  temp.sub
sed -i "s/QUEUETYPE/$queuetype/g"  temp.sub
sed -i "s/NJOBS/$njobs/g"  temp.sub
echo "------------------------------------------------------------------------"
cat temp.sub
echo "------------------------------------------------------------------------"

condor_submit temp.sub
rm -rf temp.sub


### exit script
exit 0
