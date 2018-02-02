#!/bin/sh
# Copyright (C) Matthias Kesenheimer - All Rights Reserved
# Written by Matthias Kesenheimer <m.kesenheimer@gmx.net>, 2017
# calls the LoopTools and SLHAlib configure scripts

WORKINGDIR=$(pwd)
LT=$WORKINGDIR/Tools/LoopTools-2.12
SLHA=$WORKINGDIR/Tools/SLHALib-2.2

cd $LT && ./configure
cd $SLHA && ./configure