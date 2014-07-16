
for which in max min
do
case $which in
max) ind=4 ;;
min) ind=5 ;;
esac


(echo $ind ; ls -c1 pwgLHEF_analysis-W[1245689].top ; echo "") | mergedata

mv fort.12 pwgLHEF_analysis-$which.top

done
