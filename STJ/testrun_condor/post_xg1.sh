#!/bin/bash
###########################################################################
#
OutDir=$1
if [ ! $OutDir ] ; then
  cd essential-outputs
else
  cd $OutDir/essential-outputs
fi
#
tar -czf post_xg1_stuff.tar.gz \
    pwggridinfo-btl-xg1-*.dat \
    pwggridinfo-rmn-xg1-*.dat
echo ""
echo "**************************************************************** "
echo "This is the post-script for parallelstage 1 xgriditeration 1 ... "
echo "**************************************************************** "
echo ""
exit
