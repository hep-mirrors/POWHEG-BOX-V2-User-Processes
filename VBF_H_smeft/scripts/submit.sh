#!/bin/sh

#$ -N nnn_yyy
#$ -l h_rt=ttt:00:00
#$ -l h_vmem=4000M
#$ -S /bin/sh
#$ -cwd
#$ -j y
#S -M luisonig@mpp.mpg.de
#S -m a
#$ -o Qsub/Out/$JOB_NAME_$JOB_ID.out

#---- Powheg settings for run ----#
RNDSEED=xxx
LOGFILE=yyy
PRG=../pwhg_main
#---- ----------------------- ----#

RUNDIR=$PWD

echo '>>>> Beginning of output file'
echo '>>>> Host name:'
hostname -f

echo '>>>> Loading my bashrc'
source /afs/ipp/mpp/theorie/GoSam/.bashrc
source /afs/ipp-garching.mpg.de/home/l/luisonig/GoSamPowheg/mygnu.sh

echo '>>>> Ulimit command'
ulimit -a

echo '>>>> Enviromental variables'
env

cd $RUNDIR
echo '>>>> where I am now (job beginning)'
pwd
echo '>>>> RNDSEED of job'
echo $RNDSEED

echo '>>>> time now (job beginning)'
date

echo '>>>> run Powheg:'

echo $RNDSEED | $PRG > $LOGFILE 2>&1

echo '>>>> time now (job end)'
date