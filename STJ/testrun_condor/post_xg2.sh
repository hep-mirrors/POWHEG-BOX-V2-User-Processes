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
tar -czf post_xg2_stuff.tar.gz \
    pwggridinfo-btl-xg2-*.dat \
    pwggridinfo-rmn-xg2-*.dat
echo ""
echo "**************************************************************** "
echo "This is the post-script for parallelstage 1 xgriditeration 2 ... "
echo "**************************************************************** "
echo ""
exit
