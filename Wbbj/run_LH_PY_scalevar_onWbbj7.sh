#!/bin/bash

dir=/home/oleari/fortran/POWHEG-BOX-V2/Wbbj


# this file works ONLY in the Wbbj7_minlo_nf4_sh-W(p/m)-scalevar directory, due to the fact the 
# the final files are copied in Wbbj7_minlo_nf4_sh4-W* and  Wbbj7_minlo_nf4_sh16-W*
for work in  Wbbj7_minlo_nf4_sh-W

do
    cd $dir
    for ch in {m,p} 
    do 
	cd ${work}$ch-scalevar
	echo " "
	echo 'working in' $PWD
#	echo '  ***  assembling NLO  ***'
#	../runNLO.sh	

	echo '  ***  doing LHEF analysis  ***'
	\rm pwgLHE*.top	 > /dev/null  2>&1
	../runLHEF-scalevar.sh 

	echo '  ***  doing PY6 shower  ***'
	\rm pwg-*POWHEG+PYTHIA-output*.top  > /dev/null  2>&1
	../runpy-scalevar.sh 

	echo '  ***  doing PY6 shower + hadronization  ***'
	\rm pwg-*POWHEG+PYTHIA-output*.top  > /dev/null  2>&1
	../runpy-scalevar_had.sh 

	cd ../
    done
    cd ${work}pm-scalevar
    echo " "
    echo 'working in' $PWD  
#    (echo 3; ls -c1 ../${work}m-scalevar/pwgNLO.top  ../${work}p-scalevar/pwgNLO.top; echo "") | mergedata
#    mv fort.12 pwgNLO_Wpm.top    

    for i in {1..7}
    do
	(echo 3; ls -c1 ../${work}m-scalevar/pwgLHEF_analysis-W${i}.top  ../${work}p-scalevar/pwgLHEF_analysis-W${i}.top; echo "") | mergedata
	mv fort.12 pwgLHEF_analysis-W${i}_Wpm.top       
	
	(echo 3; ls -c1 ../${work}m-scalevar/pwgPOWHEG+PYTHIA-output_nohad-W${i}.top  ../${work}p-scalevar/pwgPOWHEG+PYTHIA-output_nohad-W${i}.top; echo "") | mergedata
	mv fort.12 pwgPOWHEG+PYTHIA-output_nohad-W${i}_Wpm.top       
	
	(echo 3; ls -c1 ../${work}m-scalevar/pwgPOWHEG+PYTHIA-output_had-W${i}.top  ../${work}p-scalevar/pwgPOWHEG+PYTHIA-output_had-W${i}.top; echo "") | mergedata
	mv fort.12 pwgPOWHEG+PYTHIA-output_had-W${i}_Wpm.top       


    done

    for which in max min
    do
	case $which in
	    max) ind=4 ;;
	    min) ind=5 ;;
	esac
	
	(echo $ind; ls -c1 pwgLHEF_analysis-W*_Wpm.top; echo "") | mergedata
	mv fort.12 pwgLHEF_analysis-${which}_Wpm.top 


	(echo $ind; ls -c1 pwgPOWHEG+PYTHIA-output_nohad-W*_Wpm.top; echo "") | mergedata
	mv fort.12 pwgPOWHEG+PYTHIA-output_nohad-${which}_Wpm.top 

	(echo $ind; ls -c1 pwgPOWHEG+PYTHIA-output_had-W*_Wpm.top; echo "") | mergedata
	mv fort.12 pwgPOWHEG+PYTHIA-output_had-${which}_Wpm.top 

    done
	
done

dir=/home/oleari/fortran/POWHEG-BOX-V2/Wbbj/Wbb_Wbbj_results/Wbbj/Wbbj7_minlo_nf4_sh-Wpm/

\cp pwgLHEF_analysis-min_Wpm.top                 $dir
\cp pwgLHEF_analysis-max_Wpm.top                 $dir

\cp pwgPOWHEG+PYTHIA-output_nohad-min_Wpm.top    $dir
\cp pwgPOWHEG+PYTHIA-output_nohad-max_Wpm.top    $dir

\cp pwgPOWHEG+PYTHIA-output_had-min_Wpm.top      $dir
\cp pwgPOWHEG+PYTHIA-output_had-max_Wpm.top      $dir



