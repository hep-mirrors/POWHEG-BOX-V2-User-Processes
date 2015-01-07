#!/bin/bash 


DIR="NNLOtest"

mv $DIR $DIR-bak 

mkdir $DIR

cp job_desc $DIR/. 

for i in {0..126}
do 
mkdir $DIR/$DIR$i  

(cd  $DIR/$DIR$i; cp ../../bins.txt . ; mpisubzanderi run$i.out run$i.err "1h" 1 ../.././fewzz -i ../../input_z.txt -h ../../histograms.txt -p . -o top -l . -s $i) 


done 