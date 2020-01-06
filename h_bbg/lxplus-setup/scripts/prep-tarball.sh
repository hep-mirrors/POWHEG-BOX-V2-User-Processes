#!/bin/bash


## settings
stage=$1  # completed stage
xgrid=$2  # completed grid iteration (relevant for stage=1, otherwise set to 1)

## directories
master=XXMASTER
output=XXOUTPUT

### prepare name of output subdirectory
xxstag=`printf "%02d" $stage`
xxgrid=`printf "%02d" $xgrid`
xdir=results-$xxstag-$xxgrid

### prepare tarball
{
    cd $output/$xdir/
    tarball=pwhg-pack-${xxstag}-${xxgrid}.tar.gz
    tar -zcvf $tarball *.dat
    cp -v $tarball $master/tarball/
    cd -
}

### exit script
exit 0
