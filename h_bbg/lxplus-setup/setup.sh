#!/bin/bash

masterdir=ABSOLUTE_PATH_MASTER  ## location of the master directory (absolute path)
outputdir=ABSOLUTE_PATH_OUTPUT  ## loaction of the output directory [preferably /eos/...] (absolute path)


### create directories
mkdir $masterdir
mkdir $masterdir/scripts
mkdir $masterdir/tarball
mkdir $masterdir/input
mkdir $masterdir/log
mkdir $outputdir


### compile main program and copy executable
echo "@@ recompiling executable"
{
		cd ..
		## recompile, just in case
		git status > hbbg.status.log
		git log -1 > hbbg.commit.log
		make clean
		make -j
		cd -
} &> hbbg.compile.log
cp -v ../pwhg_main $masterdir/input/
mv -v ../hbbg.status.log $masterdir/log/
mv -v ../hbbg.commit.log $masterdir/log/
mv -v hbbg.compile.log $masterdir/log/


### copy necessary files
echo "@@ copying necessary files"
cp -v scripts/condor-pwhg.sh $masterdir/scripts/
cp -v scripts/prep-tarball.sh $masterdir/scripts/
cp -v scripts/submit-pwhg.sh $masterdir/
cp -v scripts/README $masterdir/


### copy powheg.input-save file
echo "@@ copying master input card"
cp -v cards/powheg.input-save $masterdir/input/
cp -v cards/pwgseeds.dat $masterdir/input/
cp -v cards/pwhg.sub $masterdir/input/


### adjusting master/output paths in scripts
list="condor-pwhg.sh prep-tarball.sh"
for file in $list; do
    sed -i "s@XXMASTER@$masterdir@g" $masterdir/scripts/$file
    sed -i "s@XXOUTPUT@$outputdir@g" $masterdir/scripts/$file
done

### exit script
exit 0
