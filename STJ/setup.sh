#!/bin/bash

procdir=`echo $PWD | sed 's/\//\\\\\//g'`
echo "procdir=$procdir"
sed 's/procdir=.*/procdir="'$procdir'\/"/' virtual.f > virtual-tmp.f
cp -f virtual-tmp.f virtual.f
rm virtual-tmp.f
