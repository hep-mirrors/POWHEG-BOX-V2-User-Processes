#!/bin/bash

dir=/home/oleari/fortran/POWHEG-BOX-V2/Wbbj


for work in  Wbbj7_minlo_nf4_sh-W  Wbbj7_minlo_nf4_mw2mb-W  
do
    cd $dir
    for ch in {m,p} 
    do 
	cd ${work}$ch
	echo " "
	echo 'working in' $PWD
	echo '  ***  assembling NLO  ***'
	../runNLO.sh	

	echo '  ***  doing LHEF analysis  ***'
	\rm pwgLHE*.top	 > /dev/null  2>&1
	../runLHEF.sh

	echo '  ***  doing PY6 shower  ***'
	\rm pwg-*-POWHEG+PYTHIA-output.top  > /dev/null  2>&1
	../runpy.sh 

	echo '  ***  doing PY6 shower + hadronization  ***'
	\rm pwg-*-POWHEG+PYTHIA-output.top  > /dev/null  2>&1
	../runpy_had.sh 

	cd ../
    done
    cd ${work}pm
    echo " "
    echo 'working in' $PWD  
    (echo 3; ls -c1 ../${work}m/pwgNLO.top  ../${work}p/pwgNLO.top; echo "") | mergedata
    mv fort.12 pwgNLO_Wpm.top    

    (echo 3; ls -c1 ../${work}m/pwgLHEF_analysis.top  ../${work}p/pwgLHEF_analysis.top; echo "") | mergedata
    mv fort.12 pwgLHEF_analysis_Wpm.top       

    (echo 3; ls -c1 ../${work}m/pwgPOWHEG+PYTHIA-output_nohad.top  ../${work}p/pwgPOWHEG+PYTHIA-output_nohad.top; echo "") | mergedata
    mv fort.12 pwgPOWHEG+PYTHIA-output_nohad_Wpm.top       

    (echo 3; ls -c1 ../${work}m/pwgPOWHEG+PYTHIA-output_had.top  ../${work}p/pwgPOWHEG+PYTHIA-output_had.top; echo "") | mergedata
    mv fort.12 pwgPOWHEG+PYTHIA-output_had_Wpm.top       



    \cp pwgNLO_Wpm.top                             $dir/Wbb_Wbbj_results/Wbbj/${work}pm/
    \cp pwgLHEF_analysis_Wpm.top                   $dir/Wbb_Wbbj_results/Wbbj/${work}pm/
    \cp pwgPOWHEG+PYTHIA-output_nohad_Wpm.top      $dir/Wbb_Wbbj_results/Wbbj/${work}pm/
    \cp pwgPOWHEG+PYTHIA-output_had_Wpm.top        $dir/Wbb_Wbbj_results/Wbbj/${work}pm/
   
done

