#!/bin/bash
###########################################################################
# Set some important variables internal to this script.
#
outdir=$4
address=$5
offset=0
task=$1
nJobs=$2
initdir=$3
startSeed=$((1+offset))
endSeed=$((nJobs+offset))
maxBigLoops=1
do_st1=0
igrid=1
do_st2=0
do_NLOplots=0
do_st3=0
do_st4=1
do_rwgt=0
do_lhef=0
do_py6=0
do_py8=0
#
###########################################################################
# Set seed variable and seedString equivalent string.
#
seed=$((task+1+offset))
case $seed in
    [1-9])                seedString=000$seed ;;
    [1-9][0-9])           seedString=00$seed  ;;
    [1-9][0-9][0-9])      seedString=0$seed   ;;
    [1-9][0-9][0-9][0-9]) seedString=$seed    ;;
esac
#
###########################################################################
# Which type of run are we doing.
runType=""
if [ $do_st1 -eq 1 ] ; then
    runType+="st1 "
    runType+="$igrid "
fi
if [ $do_st2 -eq 1 ] ; then
    runType+="st2 "
fi
if [ $do_st3 -eq 1 ] ; then
    runType+="st3 "
fi
if [ $do_st4 -eq 1 ] ; then
    runType+="st4 "
fi
if [ $do_rwgt -eq 1 ] ; then
    runType+="rwgt "
fi
if [ $do_lhef -eq 1 ] ; then
    runType+="lhef "
fi
if [ $do_py6 -eq 1 ] ; then
    runType+="py6 "
fi
if [ $do_py8 -eq 1 ] ; then
    runType+="py8 "
fi
#
###########################################################################
# Send mail to say things are starting to happen for first/last array job.
#
if [ $address ] ; then
if [ $seed -eq $startSeed ] ; then
    echo "Sending mail to say first job in array is starting ..."
    echo "runType = $runType"
    echo "Started first $runType" | \
    mail -s "Started first $runType" $address
fi
if [ $seed -eq $endSeed ] ; then
    echo "Sending mail to say final job in array is starting ..."
    echo "runType = $runType"
    echo "Started final $runType" | \
    mail -s "Started final $runType" $address
fi
fi
#
###########################################################################
# Get the name of the directory we're submitting this script from.
#
# Tell the current worker node to go into it.
cd $initdir
#
###########################################################################
# Put some infos in the stdout.
#
echo -e "\nJob running parameters:\n"
echo -e "nJobs = $nJobs"
echo -e "Starting seed = $startSeed  "
echo -e "Current seed  = $seed       "
echo -e "Ending seed   = $endSeed    "
#
###########################################################################
# Make output directories (on scratch) to keep things tidy and organised.
#
if [ ! -e essential-outputs ] ; then mkdir -p  $outdir/essential-outputs ; fi
if [ ! -e plot-outputs      ] ; then mkdir -p  $outdir/plot-outputs      ; fi
if [ ! -e technical-outputs ] ; then mkdir -p  $outdir/technical-outputs ; fi
if [ ! -e log-files         ] ; then mkdir -p  $outdir/log-files         ; fi
if [ ! -e nlo-outputs       ] ; then mkdir -p  $outdir/nlo-outputs       ; fi
if [ ! -e pwhgalone-outputs ] ; then mkdir -p  $outdir/pwhgalone-outputs ; fi
if [ ! -e event-files       ] ; then mkdir -p  $outdir/event-files       ; fi
if [ ! -e lhef-outputs      ] ; then mkdir -p  $outdir/lhef-outputs      ; fi
if [ ! -e pythia6-outputs   ] ; then mkdir -p  $outdir/pythia6-outputs   ; fi
if [ ! -e pythia8-outputs   ] ; then mkdir -p  $outdir/pythia8-outputs   ; fi
#
essential_outputs=$outdir/essential-outputs/
plot_outputs=$outdir/plot-outputs/
technical_outputs=$outdir/technical-outputs/
log_files=$outdir/log-files/
nlo_outputs=$outdir/nlo-outputs/
pwhgalone_outputs=$outdir/pwhgalone-outputs/
event_files=$outdir/event-files/
lhef_outputs=$outdir/lhef-outputs/
pythia6_outputs=$outdir/pythia6-outputs/
pythia8_outputs=$outdir/pythia8-outputs/
#
###########################################################################
# Check we have executables and a powheg.input-save input file.
#
if [ ! -e pwhg_main ] ; then
    echo ; echo "Could not find $PWD/pwhg_main executable. Quitting." ; echo
    exit
fi
if [ ! -e powheg.input-save ] ; then
    echo ; echo "Could not find $PWD/powheg.input-save input file. Quitting." ; echo
    exit
fi
if [ ! -e ident_card.dat ] ; then
    echo ; echo "Could not find $PWD/ident_card.dat input file. Quitting." ; echo
    exit
fi
#
###########################################################################
# Make a named directory to work in, copy basic stuff to it.
#
rundir=$TMPDIR/kh-$seed/
rm -rf $rundir
mkdir  $rundir
if [ -e $initdir/pwgseeds.dat ] ; then
    cp $initdir/pwgseeds.dat     $rundir
elif [ $do_st1 -eq 1 -o $do_st2 -eq 1 -o $do_st3 -eq 1 -o $do_st4 -eq 1 -o $do_rwgt -eq 1 ] ; then
    echo -e "ERROR : no pwgseeds.dat in $initdir.\nFatal. Quitting." 
    exit
fi
if [ -e $initdir/powheg.input-save ] ; then
    cp $initdir/powheg.input-save     $rundir
elif [ $do_st1 -eq 1 -o $do_st2 -eq 1 -o $do_st3 -eq 1 -o $do_st4 -eq 1 -o $do_rwgt -eq 1 ] ; then
    echo -e "ERROR : no powheg.input-save in $initdir.\nFatal. Quitting." 
    exit
fi
if [ -e $initdir/ident_card.dat ] ; then
    cp $initdir/ident_card.dat     $rundir
elif [ $do_st1 -eq 1 -o $do_st2 -eq 1 -o $do_st3 -eq 1 -o $do_st4 -eq 1 -o $do_rwgt -eq 1 ] ; then
    echo -e "ERROR : no ident_card.dat in $initdir.\nFatal. Quitting."
    exit
fi
if [ -e $initdir/pwhg_main ] ; then
    cp $initdir/pwhg_main     $rundir
elif [ $do_st1 -eq 1 -o $do_st2 -eq 1 -o $do_st3 -eq 1 -o $do_st4 -eq 1 -o $do_rwgt -eq 1 ] ; then
    echo -e "ERROR : no pwhg_main in $initdir.\nFatal. Quitting." 
    exit
fi
if [ -e $initdir/lhef_analysis ] ; then
    cp $initdir/lhef_analysis     $rundir
elif [ $do_lhef -eq 1 ] ; then
    echo -e "ERROR : no lhef_analysis in $initdir.\nFatal. Quitting." 
    exit
fi
if [ -e $initdir/main-PYTHIA-lhef ] ; then
    cp $initdir/main-PYTHIA-lhef     $rundir
elif [ $do_py6 -eq 1 ] ; then
    echo -e "ERROR : no main-PYTHIA-lhef in $initdir.\nFatal. Quitting." 
    exit
fi
if [ -e $initdir/main-PYTHIA8-lhef ]  ; then
    cp $initdir/main-PYTHIA8-lhef      $rundir
elif [ $do_py8 -eq 1 ] ; then
    echo -e "ERROR : no main-PYTHIA8-lhef in $initdir.\nFatal. Quitting." 
    exit
fi
cp $initdir/mergedata         $rundir
#
###########################################################################
# Go to where we will do the work.
cd $rundir
echo -e ""
echo -e "Now in rundir = $PWD"
echo -e "\ndf -h says:\n"
df -h
#
###########################################################################
# Name of the file we will record the timings of all the run phases in.
TimingsFile=Timings-$seedString.txt
#
###########################################################################
###########################################################################
#                                                                         #
#                 Determine importance sampling grids                     #
#                                                                         #
###########################################################################
###########################################################################
#
if [ $do_st1 -eq 1 ] ; then
#
# Fish out xgrid files from last iteration if this is not the first ...
#
if [ $igrid -gt 1 ] ; then
#    cp $essential_outputs/pwggridinfo-btl-xg$((igrid-1))-*.dat ./
#    cp $essential_outputs/pwggridinfo-rmn-xg$((igrid-1))-*.dat ./
    cp $essential_outputs/post_xg$((igrid-1))_stuff.tar.gz     ./
    tar -xzvf post_xg$((igrid-1))_stuff.tar.gz
    rm post_xg$((igrid-1))_stuff.tar.gz
    cp $technical_outputs/Timings-$seedString.txt ./
fi
echo -e "\nListing directory after fishing needed grid files:\n" ; ls
#
# Run the code logging start and finish times ...
#
(echo -n ' '                                          ) >> $TimingsFile
(echo -n Starting st1 xg$igrid $seedString ' ' ; date ) >> $TimingsFile
cat powheg.input-save | sed "s/xgriditeration.*/xgriditeration $igrid/ ; s/parallelstage.*/parallelstage 1/" > powheg.input
echo $seed | /usr/bin/time --verbose ./pwhg_main
(echo -n ' '                                          ) >> $TimingsFile
(echo -n Ending   st1 xg$igrid $seedString ' ' ; date ) >> $TimingsFile
echo
ls
#
# Copy back essentials for next phase and other stuff ...
#
mv $TimingsFile $technical_outputs/
mv pwgcounters-st1-$seedString.dat                      $technical_outputs/
mv pwg-xg$igrid-$seedString-btlgrid.top                 $technical_outputs/
if [ -e pwggridinfo-btl-xg$igrid-$seedString.dat ] ; then
    mv  pwggridinfo-btl-xg$igrid-$seedString.dat        $essential_outputs/
fi
if [ -e pwggridinfo-rmn-xg$igrid-$seedString.dat ] ; then
    mv  pwggridinfo-rmn-xg$igrid-$seedString.dat        $essential_outputs/
fi
#
fi
#
###########################################################################
###########################################################################
#                                                                         #
#        NLO integration and determination of Btilde upper bound          #
#                                                                         #
###########################################################################
###########################################################################
#
if [ $do_st2 -eq 1 ] ; then
#
# Determine the number of importance sampling grid iterations carried out.
#
gridIterations=`ls $essential_outputs/pwggridinfo-btl-xg* | \
                sed "s/-[0-9][0-9][0-9][0-9].dat//" | \
                sed "s/.*pwggridinfo-btl-xg//" | \
                uniq | sort`
gridIterations=`echo $gridIterations | sed "s/.*\ //"`
#
# Fish out needed importance sampling grids ...
#
# cp $essential_outputs/pwggridinfo-btl-xg$gridIterations-*.dat ./
# cp $essential_outputs/pwggridinfo-rmn-xg$gridIterations-*.dat ./
cp $essential_outputs/post_xg$((gridIterations))_stuff.tar.gz ./
tar -xzvf post_xg$((gridIterations))_stuff.tar.gz
rm post_xg$((gridIterations))_stuff.tar.gz
cp $technical_outputs/Timings-$seedString.txt ./
echo -e "\nListing directory after fishing needed grid files:\n" ; ls
#
# Run the code logging start and finish times ...
#
if [ $do_NLOplots -eq 1 ] ; then
   cat powheg.input-save | sed 's/parallelstage.*/parallelstage 2/ ; s/testplots.*/testplots 1/' > powheg.input
else
   cat powheg.input-save | sed 's/parallelstage.*/parallelstage 2/ ; s/testplots.*/testplots 0/' > powheg.input
fi
(echo -n ' '                                 ) >> $TimingsFile
(echo -n Starting st2 $seedString ' ' ; date ) >> $TimingsFile
echo $seed | /usr/bin/time --verbose ./pwhg_main
(echo -n ' '                                 ) >> $TimingsFile
(echo -n Ending   st2 $seedString ' ' ; date ) >> $TimingsFile
echo
ls
#
# Copy back essentials for next phase and other stuff ...
#
mv $TimingsFile $technical_outputs/
mv pwgcounters-st2-$seedString.dat     $technical_outputs/
mv pwg-st2-$seedString-stat.dat        $technical_outputs/
mv pwg-$seedString-stat.dat            $technical_outputs/
mv pwg-$seedString-btlgrid.top         $technical_outputs/
mv pwggrid-$seedString.dat             $essential_outputs/
mv pwg-$seedString-NLO.top             $nlo_outputs/
mv pwgbtildeupb-$seedString.dat        $essential_outputs/
mv pwgremnupb-$seedString.dat          $essential_outputs/
#
fi
#
###########################################################################
###########################################################################
#                                                                         #
#        Determine upper bounding envelope for veto algorithm             #
#                                                                         #
###########################################################################
###########################################################################
if [ $do_st3 -eq 1 ] ; then
#
# Determine the number of importance sampling grid iterations carried out.
#
gridIterations=`ls $essential_outputs/pwggridinfo-btl-xg* | \
                sed "s/-[0-9][0-9][0-9][0-9].dat//" | \
                sed "s/.*pwggridinfo-btl-xg//" | \
                uniq | sort`
gridIterations=`echo $gridIterations | sed "s/.*\ //"`
#
# Fish out essential files needed for this stage ...
#
# cp $essential_outputs/pwggridinfo-btl-xg$gridIterations-*.dat ./
# cp $essential_outputs/pwggridinfo-rmn-xg$gridIterations-*.dat ./
# cp $essential_outputs/pwggrid-*.dat                           ./
# cp $essential_outputs/pwgbtildeupb-*.dat                      ./
# cp $essential_outputs/pwgremnupb-*.dat                        ./
cp $essential_outputs/post_st2_stuff.tar.gz ./
tar -xzvf post_st2_stuff.tar.gz
rm post_st2_stuff.tar.gz
cp $technical_outputs/Timings-$seedString.txt ./
echo -e "\nListing directory after fishing needed grid files:\n" ; ls
#
# Run the code logging start and finish times ...
#
cat powheg.input-save | sed 's/parallelstage.*/parallelstage 3/' > powheg.input
(echo -n ' '                                 ) >> $TimingsFile
(echo -n Starting st3 $seedString ' ' ; date ) >> $TimingsFile
echo $seed | /usr/bin/time --verbose ./pwhg_main
(echo -n ' '                                 ) >> $TimingsFile
(echo -n Ending   st3 $seedString ' ' ; date ) >> $TimingsFile
echo
ls
#
# Copy back essentials for next phase and other stuff ...
#
mv $TimingsFile $technical_outputs/
mv pwgcounters-st3-$seedString.dat     $technical_outputs/
mv pwg-st3-$seedString-stat.dat        $technical_outputs/
mv pwg-$seedString-stat.dat            $technical_outputs/
mv pwg-$seedString-btlgrid.top         $technical_outputs/
mv pwgubound-$seedString.dat           $essential_outputs/
mv pwgfullgrid-$seedString.dat         $essential_outputs/
#
fi
#
###########################################################################
###########################################################################
#                                                                         #
#  Initiate BIG LOOP over generation of events, reweighting and analysis  #
#                                                                         #
###########################################################################
###########################################################################
#
#
#
#
for BigLoop in `seq 1 $maxBigLoops`
do
#
#
#
#
###########################################################################
###########################################################################
#                                                                         #
#                     Generate Les Houches events                         #
#                                                                         #
###########################################################################
###########################################################################
if [ $do_st4 -eq 1 ] ; then
#
# Determine the number of importance sampling grid iterations carried out.
#
gridIterations=`ls $essential_outputs/pwggridinfo-btl-xg* | \
                sed "s/-[0-9][0-9][0-9][0-9].dat//" | \
                sed "s/.*pwggridinfo-btl-xg//" | \
                uniq | sort`
gridIterations=`echo $gridIterations | sed "s/.*\ //"`
#
# Fish out essential files needed for this stage ...
#
# cp $essential_outputs/pwggridinfo-btl-xg$gridIterations-*.dat ./
# cp $essential_outputs/pwggridinfo-rmn-xg$gridIterations-*.dat ./
# cp $essential_outputs/pwggrid-*.dat                           ./
# cp $essential_outputs/pwgubound-*.dat                         ./
# cp $essential_outputs/pwgfullgrid-*.dat                       ./
cp $essential_outputs/post_st3_stuff.tar.gz ./
tar -xzvf post_st3_stuff.tar.gz
rm post_st3_stuff.tar.gz
cp $technical_outputs/Timings-$seedString.txt ./
echo -e "\nListing directory after fishing needed grid files:\n" ; ls
#
# Generate events.
#
cat powheg.input-save | sed 's/parallelstage.*/parallelstage 4/' > powheg.input
echo "lhrwgt_id 'st4'"                                 >> powheg.input
echo "lhrwgt_descr 'Initial st4 event generation'"     >> powheg.input
(echo -n ' '                                 ) >> $TimingsFile
(echo -n Starting st4 $seedString ' ' ; date ) >> $TimingsFile
echo $seed | /usr/bin/time --verbose ./pwhg_main
(echo -n ' '                                 ) >> $TimingsFile
(echo -n Ending   st4 $seedString ' ' ; date ) >> $TimingsFile
echo
ls
nEventsFound=`grep -c "<event>" pwgevents-$seedString.lhe`
echo ""
echo "Generated file" `ls pwgevents-$seedString.lhe`
echo "Grepping says it contains $nEventsFound events ..."
# 
# Tar event file ...
tar -czf pwgevents-$seedString.lhe.tar.gz pwgevents-$seedString.lhe
#
# Copy back essentials for next phase and other stuff ...
#
mv $TimingsFile $technical_outputs/
mv pwgcounters-st4-$seedString.dat     $technical_outputs/
mv pwgboundviolations-$seedString.dat  $technical_outputs/
mv pwg-$seedString-stat.dat            $technical_outputs/
mv pwg-$seedString-btlgrid.top         $technical_outputs/
mv pwgpwhgalone-output$seedString.top  $pwhgalone_outputs/
mv pwgevents-$seedString.lhe.tar.gz    $event_files/
#
fi
#
###########################################################################
###########################################################################
#                                                                         #
#      Add 7 point scale variation to event files by reweighting          #
#                                                                         #
###########################################################################
###########################################################################
if [ $do_rwgt -eq 1 ] ; then
#
# Determine the number of importance sampling grid iterations carried out.
#
gridIterations=`ls $essential_outputs/pwggridinfo-btl-xg* | \
                sed "s/-[0-9][0-9][0-9][0-9].dat//" | \
                sed "s/.*pwggridinfo-btl-xg//" | \
                uniq | sort`
gridIterations=`echo $gridIterations | sed "s/.*\ //"`
#
# Fish out essential files needed for this stage ...
#
# cp $essential_outputs/pwggridinfo-btl-xg$gridIterations-*.dat ./
# cp $essential_outputs/pwggridinfo-rmn-xg$gridIterations-*.dat ./
# cp $essential_outputs/pwggrid-*.dat                           ./
# cp $essential_outputs/pwgubound-*.dat                         ./
# cp $essential_outputs/pwgfullgrid-*.dat                       ./
cp $essential_outputs/post_st4_stuff.tar.gz ./
tar -xzvf post_st4_stuff.tar.gz
rm post_st4_stuff.tar.gz
cp $technical_outputs/Timings-$seedString.txt ./
cp $event_files/pwgevents-$seedString.lhe.tar.gz              ./
tar -xzvf pwgevents-$seedString.lhe.tar.gz
rm pwgevents-$seedString.lhe.tar.gz
echo -e "\nListing directory after fishing needed grid files:\n" ; ls
#
# Reweight events for 7pt scale variation
#
(echo -n ' '                                  ) >> $TimingsFile
(echo -n Starting rwgt $seedString ' ' ; date ) >> $TimingsFile
for iscales in {1..7}
do
    case $iscales in
        1) facscfact=1   ; renscfact=1   ;;
        2) facscfact=0.5 ; renscfact=0.5 ;;
        3) facscfact=0.5 ; renscfact=1   ;;
        4) facscfact=1   ; renscfact=0.5 ;;
        5) facscfact=2   ; renscfact=1   ;;
        6) facscfact=1   ; renscfact=2   ;;
        7) facscfact=2   ; renscfact=2   ;;
    esac
# must be at the parallel stage 4, and the files generated at the previous
# stages must be present.
    case $iscales in
        1) scID=11 ;;
        2) scID=HH ;;
        3) scID=1H ;;
        4) scID=H1 ;;
        5) scID=12 ;;
        6) scID=21 ;;
        7) scID=22 ;;
    esac
    cat  powheg.input-save | sed "s/parallelstage.*/parallelstage 4/ ; s/storeinfo_rwgt/compute_rwgt/ ; s/facscfact.*/facscfact $facscfact/ ; s/renscfact.*/renscfact $renscfact/ " > powheg.input
    echo "lhrwgt_id '$scID'"                               >> powheg.input
    echo "lhrwgt_descr 'KR = $renscfact, KF = $facscfact'" >> powheg.input
    echo "lhrwgt_group_name 'ScaleVars'"                   >> powheg.input
    echo "lhrwgt_group_combine 'envelope'"                 >> powheg.input
    /usr/bin/time --verbose ./pwhg_main <<EOF
$seed
pwgevents-$seedString.lhe
EOF

echo
ls
echo
tail -n20 pwgevents-rwgt-$seedString.lhe
mv -f pwgevents-rwgt-$seedString.lhe pwgevents-$seedString.lhe
done
#
(echo -n ' '                                  ) >> $TimingsFile
(echo -n Ending   rwgt $seedString ' ' ; date ) >> $TimingsFile
echo
ls
nEventsFound=`grep -c "<event>" pwgevents-$seedString.lhe`
echo ""
echo "Reweighted file" `ls pwgevents-$seedString.lhe`
echo "Grepping says it contains $nEventsFound events ..."
#
# Tar event file ...
mv       pwgevents-rwgt-$seedString.lhe   pwgevents-$seedString.lhe
tar -czf pwgevents-$seedString.lhe.tar.gz pwgevents-$seedString.lhe
#
# Copy back essentials for next phase and other stuff ...
#
mv $TimingsFile $technical_outputs/
rm $event_files/pwgevents-$seedString.lhe.tar.gz
mv pwgevents-$seedString.lhe.tar.gz $event_files/
rm pwgevents-$seedString.lhe
#
fi
#
###########################################################################
###########################################################################
#                                                                         #
#                    Analyse events with lhef_analysis                    #
#                                                                         #
###########################################################################
###########################################################################
if [ $do_lhef -eq 1 ] ; then
#
# Fish out essential files needed for this stage ...
#
cp $event_files/pwgevents-$seedString.lhe.tar.gz         ./
tar -xzvf pwgevents-$seedString.lhe.tar.gz
rm pwgevents-$seedString.lhe.tar.gz
cp $technical_outputs/Timings-$seedString.txt ./
echo -e "\nListing directory after fishing needed grid files:\n" ; ls
#
cp powheg.input-save powheg.input
(echo -n ' '                                  ) >> $TimingsFile
(echo -n Starting lhef $seedString ' ' ; date ) >> $TimingsFile
echo pwgevents-$seedString.lhe | ./lhef_analysis
(echo -n ' '                                  ) >> $TimingsFile
(echo -n Ending   lhef $seedString ' ' ; date ) >> $TimingsFile
echo
ls
#
# Copy back essentials for next phase and other stuff ...
#
mv $TimingsFile $technical_outputs/
mv pwgLHEF_analysis-$seedString-W*.top  $lhef_outputs/
#
fi
#
###########################################################################
###########################################################################
#                                                                         #
#                  Analyse events with main-PYTHIA-lhef                   #
#                                                                         #
###########################################################################
###########################################################################
if [ $do_py6 -eq 1 ] ; then
#
# Fish out essential files needed for this stage ...
#
cp $event_files/pwgevents-$seedString.lhe.tar.gz         ./
tar -xzvf pwgevents-$seedString.lhe.tar.gz
rm pwgevents-$seedString.lhe.tar.gz
cp $technical_outputs/Timings-$seedString.txt ./
echo -e "\nListing directory after fishing needed grid files:\n" ; ls
#
cp powheg.input-save powheg.input
(echo -n ' '                                  ) >> $TimingsFile
(echo -n Starting py6  $seedString ' ' ; date ) >> $TimingsFile
echo pwgevents-$seedString.lhe | ./main-PYTHIA-lhef
(echo -n ' '                                  ) >> $TimingsFile
(echo -n Ending   py6  $seedString ' ' ; date ) >> $TimingsFile
echo
ls
#
# Copy back essentials for next phase and other stuff ...
#
mv $TimingsFile $technical_outputs/
mv pwgPOWHEG+PYTHIA-output-$seedString-W*.top $pythia6_outputs/
#
fi
#
###########################################################################
###########################################################################
#                                                                         #
#                Analyse events with main-PYTHIA8-lhef                    #
#                                                                         #
###########################################################################
###########################################################################
if [ $do_py8 -eq 1 ] ; then
#
# Fish out essential files needed for this stage ...
#
cp $event_files/pwgevents-$seedString.lhe.tar.gz         ./
tar -xzvf pwgevents-$seedString.lhe.tar.gz
rm pwgevents-$seedString.lhe.tar.gz
cp $technical_outputs/Timings-$seedString.txt ./
echo -e "\nListing directory after fishing needed grid files:\n" ; ls
#
cp powheg.input-save powheg.input
(echo -n ' '                                  ) >> $TimingsFile
(echo -n Starting py8  $seedString ' ' ; date ) >> $TimingsFile
echo pwgevents-$seedString.lhe | ./main-PYTHIA8-lhef
(echo -n ' '                                  ) >> $TimingsFile
(echo -n Ending   py8  $seedString ' ' ; date ) >> $TimingsFile
echo
ls
#
# Copy back essentials for next phase and other stuff ...
#
mv $TimingsFile $technical_outputs/
mv pwgPOWHEG+PYTHIA8-output-$seedString-W*.top $pythia8_outputs/
#
fi
#
###########################################################################
###########################################################################
#                                                                         #
#               Clean up before next cycle of BigLoop                     #
#                                                                         #
###########################################################################
###########################################################################
#
rm -f $rundir
cd $TMPDIR
#
###########################################################################
# Send mail to say things are finishing to happen for first/last array job.
#
if [ $address ]	; then
if [ $seed -eq $startSeed ] ; then
    echo "Sending mail to say first job in array is ending ..."
    echo "runType = $runType"
    echo "Ended first $runType" | \
    mail -s "Ended first $runType" -a logFile $address
fi
if [ $seed -eq $endSeed ] ; then
    echo "Sending mail to say final job in array is ending ..."
    echo "runType = $runType"
    echo "Ended final $runType" | \
    mail -s "Ended final $runType" -a logFile $address
fi
fi
#
###########################################################################
###########################################################################
#                                                                         #
#   End of BigLoop over generation of events, reweighting and analysis    #
#                                                                         #
###########################################################################
###########################################################################
#
# To restart now from the event generation phase we should remove any
# .lhe that are lying around to avoid disk issues. Previous .lhe.tar.gz
# are a factor 5 smaller than .lhe so we leave them where they are safely.
# There shouldn't be any .lhe, only .lhe.tar.gz, but to be on the safe
# side we delete them
cd $initdir
rm *.lhe
# Then we have to take care to shift the starting and ending seeds up so
# they don't overlap the ones we already ran with, to avoid generating
# identical events over again.
startSeed=$((endSeed+1))
endSeed=$((startSeed+nJobs-1))
#
done
#
#
#
#
###########################################################################
###########################################################################
#                                                                         #
#                             **** THE END ****                           #
#                                                                         #
###########################################################################
###########################################################################
#
#
#
#
#
#
#
exit
exit
exit
exit
exit
exit
exit
#
#
#
#
#
#
#
