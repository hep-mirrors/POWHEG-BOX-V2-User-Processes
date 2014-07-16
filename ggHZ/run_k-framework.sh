#!/bin/bash

# number of cores/cpu
ncores=8

function char {
        case $1 in
            [1-9])  echo 000$1 ;;
            [1-9][0-9])  echo 00$1 ;;
        esac
}


for icase in {1..7}
do
    case $icase in
	1)  kappa_ght=1.0  ; kappa_ghz=1.0  ;;
	2)  kappa_ght=1.2  ; kappa_ghz=1.0  ;;
	3)  kappa_ght=0.8  ; kappa_ghz=1.0  ;;
	4)  kappa_ght=1.0  ; kappa_ghz=1.2  ;;
	5)  kappa_ght=1.0  ; kappa_ghz=0.8  ;;
	6)  kappa_ght=1.2  ; kappa_ghz=0.8  ;;
	7)  kappa_ght=0.8  ; kappa_ghz=1.2  ;;
    esac

    cat  powheg.input-save | sed "s/storeinfo_rwgt/compute_rwgt/ ; s/kappa_ght.*/kappa_ght $kappa_ght/ ; s/kappa_ghz.*/kappa_ghz $kappa_ghz/ ; s/parallelstage/#parallelstage/ ; s/xgriditeration/#xgriditeration/; s/fastbtlbound/#fastbtlbound/" > powheg.input
    for i in $(seq 1 $ncores)
    do
	ch=`char $i`

	../pwhg_main <<EOF > run-$i.log 2>&1 &
$i
pwgevents-$ch.lhe
EOF
	    
    done

    wait
	
    for i in $(seq 1 $ncores)
    do
	ch=`char $i`
	\mv -f pwgevents-rwgt-$ch.lhe pwgevents-$ch.lhe 
	
    done
    
done




