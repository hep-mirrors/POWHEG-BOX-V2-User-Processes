#!/bin/sh
# Adapted from configure file found in the weakino-jet POWHEG-BOX project
# by Matthias Kesenheimer (2017)
# Adaptation by Julien Baglio (2018)
# configure the compilation for COLLIER and LoopTools

WORKINGDIR=$(pwd)
#COLLIER=$WORKINGDIR/Libraries/COLLIER-1.1
COLLIER=$WORKINGDIR/Libraries/COLLIER-1.2.2

LT=$WORKINGDIR/Libraries/LoopTools-2.12

COMPILER=$1
if [ "$1" = "" ]; then
  COMPILER=gfortran
fi

# configure COLLIER
mkdir -p $COLLIER/build
cd $COLLIER/build && cmake -DCMAKE_Fortran_COMPILER=$COMPILER -Dstatic=ON ..

# configure LoopTools
echo ''
echo ''
echo 'Now configuring the compilation of LoopTools 2.12'
echo ''
cd $LT && ./configure
