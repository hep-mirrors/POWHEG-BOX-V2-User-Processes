#!/bin/sh
# calls the configuration scripts

WORKINGDIR=$(pwd)
LT=$WORKINGDIR/Tools/LoopTools-2.12
SLHA=$WORKINGDIR/Tools/SLHALib-2.2

cd $LT && ./configure
cd $SLHA && ./configure