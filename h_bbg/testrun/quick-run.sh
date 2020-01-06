#!/bin/bash

/bin/rm -vf pwg-NLO.top
/bin/rm -vf pwgevents.lhe
/bin/rm -vf *~

/bin/rm -vf FlavRegList
/bin/rm -vf bornequiv
/bin/rm -vf pwg-btlgrid.top
/bin/rm -vf pwg-stat.dat
/bin/rm -vf pwgcounters.dat
/bin/rm -vf pwggrid.dat
/bin/rm -vf pwghistnorms.top
/bin/rm -vf pwgubound.dat
/bin/rm -vf pwgxgrid.dat
/bin/rm -vf pwhg_checklimits
/bin/rm -vf realequivregions
/bin/rm -vf virtequiv

echo "########################################################################################################################"
echo "########################################################################################################################"
time ../pwhg_main
echo "########################################################################################################################"
echo "########################################################################################################################"

exit 0
