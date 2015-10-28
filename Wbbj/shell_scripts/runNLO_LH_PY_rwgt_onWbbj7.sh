#!/bin/bash


# Py=yes: do PY shower and hadroniz.
#PY=yes
PY=no

dir=/home/oleari/fortran/POWHEG-BOX-V2/Wbbj


# this file works ONLY in the Wbbj7_minlo_nf4_sh-W(p/m)-rwgt directory, due to the fact the 
# the final files are copied in Wbbj7_minlo_nf4_sh4-W* and  Wbbj7_minlo_nf4_sh16-W*
for work in  Wbbj7_minlo_nf4_sh-W

do
    cd $dir
    for ch in {m,p} 
    do 
	cd ${work}$ch-rwgt
	echo " "
	echo 'working in' $PWD

	echo '  ***  doing LHEF analysis  ***'
	\rm pwgLHE*.top	 > /dev/null  2>&1
	../runLHEF-multi.sh

	if [ $PY = 'yes' ] 
	then
	    echo '  ***  doing PY6 shower  ***'
	    \rm pwg-*POWHEG+PYTHIA-output*.top  > /dev/null  2>&1
	    ../runpy-multi.sh 

	    echo '  ***  doing PY6 shower + hadronization  ***'
	    \rm pwg-*POWHEG+PYTHIA-output*.top  > /dev/null  2>&1
	    ../runpy-multi_had.sh 
	fi

	cd ../
    done
    cd ${work}pm
    echo " "
    echo 'working in' $PWD  

    for i in {1..3}
    do
	(echo 3; ls -c1 ../${work}m-rwgt/pwgLHEF_analysis-W${i}.top  ../${work}p-rwgt/pwgLHEF_analysis-W${i}.top; echo "") | mergedata
	mv fort.12 pwgLHEF_analysis-W${i}_Wpm.top       

	if [ $PY = 'yes' ] 
	then
	    (echo 3; ls -c1 ../${work}m-rwgt/pwgPOWHEG+PYTHIA-output_nohad-W${i}.top  ../${work}p-rwgt/pwgPOWHEG+PYTHIA-output_nohad-W${i}.top; echo "") | mergedata
	    mv fort.12 pwgPOWHEG+PYTHIA-output_nohad-W${i}_Wpm.top       
	    
	    (echo 3; ls -c1 ../${work}m-rwgt/pwgPOWHEG+PYTHIA-output_had-W${i}.top  ../${work}p-rwgt/pwgPOWHEG+PYTHIA-output_had-W${i}.top; echo "") | mergedata
	    mv fort.12 pwgPOWHEG+PYTHIA-output_had-W${i}_Wpm.top       
	fi
    done

done

work=Wbbj7_minlo_nf4_sh-W


\cp pwgLHEF_analysis-W1_Wpm.top              $dir/Wbb_Wbbj_results/Wbbj/Wbbj7_minlo_nf4_sh-Wpm/pwgLHEF_analysis_Wpm.top
if [ $PY = 'yes' ] 
then
    \cp pwgPOWHEG+PYTHIA-output_nohad-W1_Wpm.top $dir/Wbb_Wbbj_results/Wbbj/Wbbj7_minlo_nf4_sh-Wpm/pwgPOWHEG+PYTHIA-output_nohad_Wpm.top
    \cp pwgPOWHEG+PYTHIA-output_had-W1_Wpm.top   $dir/Wbb_Wbbj_results/Wbbj/Wbbj7_minlo_nf4_sh-Wpm/pwgPOWHEG+PYTHIA-output_had_Wpm.top
fi

\cp pwgLHEF_analysis-W2_Wpm.top              $dir/Wbb_Wbbj_results/Wbbj/Wbbj7_minlo_nf4_sh4-Wpm/pwgLHEF_analysis_Wpm.top


if [ $PY = 'yes' ] 
then    
    \cp pwgPOWHEG+PYTHIA-output_nohad-W2_Wpm.top $dir/Wbb_Wbbj_results/Wbbj/Wbbj7_minlo_nf4_sh4-Wpm/pwgPOWHEG+PYTHIA-output_nohad_Wpm.top
    \cp pwgPOWHEG+PYTHIA-output_had-W2_Wpm.top   $dir/Wbb_Wbbj_results/Wbbj/Wbbj7_minlo_nf4_sh4-Wpm/pwgPOWHEG+PYTHIA-output_had_Wpm.top
fi


\cp pwgLHEF_analysis-W3_Wpm.top              $dir/Wbb_Wbbj_results/Wbbj/Wbbj7_minlo_nf4_sh16-Wpm/pwgLHEF_analysis_Wpm.top
if [ $PY = 'yes' ] 
then
    \cp pwgPOWHEG+PYTHIA-output_nohad-W3_Wpm.top $dir/Wbb_Wbbj_results/Wbbj/Wbbj7_minlo_nf4_sh16-Wpm/pwgPOWHEG+PYTHIA-output_nohad_Wpm.top
    \cp pwgPOWHEG+PYTHIA-output_had-W3_Wpm.top   $dir/Wbb_Wbbj_results/Wbbj/Wbbj7_minlo_nf4_sh16-Wpm/pwgPOWHEG+PYTHIA-output_had_Wpm.top
fi

