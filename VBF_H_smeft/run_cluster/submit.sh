#!/bin/bash

#PBS -N nnn_yyy
#PBS -l nodes=1:ppn=1
#PBS -l walltime=1:00:00
#PBS -S /bin/bash
#PBS -j oe
#PBS -M emereghetti@lanl.gov
#PBS -m a
#PBS -o Qsub/Out/$PBS_JOBNAME$PBS_JOBID.out
#PBS -e Qsub/Out/$PBS_JOBNAME$PBS_JOBID.err

#---- Powheg settings for run ----#
RNDSEED=xxx
LOGFILE=yyy
PRG=../pwhg_main
#---- ----------------------- ----#

RUNDIR=$PWD

echo '>>>> Beginning of output file'
echo '>>>> Host name:'
hostname -f


echo '>>>> Ulimit command'
ulimit -a

echo '>>>> Enviromental variables'
env

cd $PBS_O_WORKDIR
echo '>>>> where I am now (job beginning)'
pwd
echo '>>>> RNDSEED of job'
echo $RNDSEED

echo '>>>> time now (job beginning)'
date

echo '>>>> run Powheg:'

export LHAPDF_DATA_PATH=/home/emereghetti/LHAPDF:$LHAPDF_DATA_PATH
echo $RNDSEED | $PRG > $LOGFILE 2>&1

echo '>>>> time now (job end)'
date
