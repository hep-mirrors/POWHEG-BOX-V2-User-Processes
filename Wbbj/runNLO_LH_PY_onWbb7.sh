#!/bin/bash

dir=/home/oleari/fortran/POWHEG-BOX-V2/Wbb_dec


for work in Wbb7_sh-W Wbb7_sh4-W  Wbb7_sh16-W  Wbb7_mw-W Wbb7_mw2mb-W  

do
    cd $dir
    for ch in {m,p} 
    do 
	cd ${work}$ch
	echo " "
	echo 'working in' $PWD
	echo '  ***  assembling NLO  ***'
	../runNLO.sh	

# 	echo '  ***  doing LHEF analysis  ***'
# 	\rm pwgLHE*.top	 > /dev/null  2>&1
# 	../runLHEF.sh

	echo '  ***  doing PY6 analysis  ***'
	\rm pwg-*-POWHEG+PYTHIA-output.top  > /dev/null  2>&1
	../runpy.sh 

	cd ../
    done
    cd ${work}pm
    echo " "
    echo 'working in' $PWD  
    (echo 3; ls -c1 ../${work}m/pwgNLO.top  ../${work}p/pwgNLO.top; echo "") | mergedata
    mv fort.12 pwgNLO_Wpm.top    
    (echo 3; ls -c1 ../${work}m/pwgLHEF_analysis.top  ../${work}p/pwgLHEF_analysis.top; echo "") | mergedata
    mv fort.12 pwgLHEF_analysis_Wpm.top       
    (echo 3; ls -c1 ../${work}m/pwgPOWHEG+PYTHIA-output.top  ../${work}p/pwgPOWHEG+PYTHIA-output.top; echo "") | mergedata
    mv fort.12 pwgPOWHEG+PYTHIA-output_Wpm.top       

    \cp pwgNLO_Wpm.top                   ../../Wbbj/Wbb_Wbbj_results/Wbb/${work}pm/
    \cp pwgLHEF_analysis_Wpm.top         ../../Wbbj/Wbb_Wbbj_results/Wbb/${work}pm/
    \cp pwgPOWHEG+PYTHIA-output_Wpm.top  ../../Wbbj/Wbb_Wbbj_results/Wbb/${work}pm/
   
done

