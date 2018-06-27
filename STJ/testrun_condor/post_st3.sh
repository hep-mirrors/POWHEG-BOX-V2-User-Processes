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
tar -czf post_st3_stuff.tar.gz \
    pwggridinfo-btl-xg1-*.dat \
    pwggridinfo-rmn-xg1-*.dat \
    pwggridinfo-btl-xg2-*.dat \
    pwggridinfo-rmn-xg2-*.dat \
    pwggrid-*.dat \
    pwgubound-*.dat \
    pwgfullgrid-*.dat
echo ""
echo "**************************************************************** "
echo "This is the post-script for parallelstage 3 ...                  "
echo "**************************************************************** "
echo ""
exit
