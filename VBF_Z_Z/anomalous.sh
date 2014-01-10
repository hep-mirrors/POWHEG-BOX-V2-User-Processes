#!/bin/bash

#This file first makes a copy of all files that are in conflict with the files in the folder anomalous. Then it copies all the necessary files from the folder 'anomalous' into the right places in the main directory. Then it make the file pwhg_main, renames it to pwhg_main_anom and copies all the original files back in place. 

#Last modified by Alexander Karlberg, 18/10/2013

make clean

echo "Creating directory for old files"
mkdir no_anomalous

echo "Copying vbfnlo-files and all .f files to no_anomalous "
\cp -r vbfnlo-files no_anomalous/.
\cp *.f Makefile no_anomalous/.
rm -rf vbfnlo-files

echo "Copying files from anomalous to main directory"
\cp -r anomalous/* .

echo "Compiling executable pwhg_main_anom"
n_cores=$(grep -c ^processor /proc/cpuinfo)
#n_cores=1 #uncomment to manually set number of cores used for compilation
make -j$n_cores

echo "Creating shell to go back"
touch no_anomalous.sh

cat <<EOF >> no_anomalous.sh
#!/bin/bash

#This files reverts the process of running anomalous.sh. Any changes made to *.f files or files in the folder vbfnlo-files by the user will be removed.

#Last modified by Alexander Karlberg, 19/8/2013

make clean

echo "Reverting to SM case"
rm -rf vbfnlo-files

echo "Copying files from no_anomalous to main directory"
\cp -r no_anomalous/* .

echo "Compiling executable pwhg_main_anom"
n_cores=$(grep -c ^processor /proc/cpuinfo)
#n_cores=1 #uncomment to manually set number of cores used for compilation
make -j$n_cores

EOF

chmod 755 no_anomalous.sh