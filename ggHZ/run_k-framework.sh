#!/bin/bash

# number of cores/cpu
ncores=8

function char {
        case $1 in
            [1-9])  echo 000$1 ;;
            [1-9][0-9])  echo 00$1 ;;
        esac
}


for icase in {1..15}
do
    case $icase in
	1)  kappa_ghb=1.0  ; kappa_ght=1.0  ; kappa_ghz=1.0  ;;
	2)  kappa_ghb=1.1  ; kappa_ght=1.0  ; kappa_ghz=1.0  ;;
	3)  kappa_ghb=0.9  ; kappa_ght=1.0  ; kappa_ghz=1.0  ;;
	4)  kappa_ghb=1.0  ; kappa_ght=1.1  ; kappa_ghz=1.0  ;;
	5)  kappa_ghb=1.0  ; kappa_ght=0.9  ; kappa_ghz=1.0  ;;
	6)  kappa_ghb=1.0  ; kappa_ght=1.0  ; kappa_ghz=1.1  ;;
	7)  kappa_ghb=1.0  ; kappa_ght=1.0  ; kappa_ghz=0.9  ;;
	8)  kappa_ghb=1.1  ; kappa_ght=0.9  ; kappa_ghz=1.0  ;;
	9)  kappa_ghb=0.9  ; kappa_ght=1.1  ; kappa_ghz=1.0  ;;
	10) kappa_ghb=1.0  ; kappa_ght=1.1  ; kappa_ghz=0.9  ;;
	11) kappa_ghb=1.0  ; kappa_ght=0.9  ; kappa_ghz=1.1  ;;
	12) kappa_ghb=0.9  ; kappa_ght=1.0  ; kappa_ghz=1.1  ;;
	13) kappa_ghb=1.1  ; kappa_ght=1.0  ; kappa_ghz=0.9  ;;
	14) kappa_ghb=0.9  ; kappa_ght=0.9  ; kappa_ghz=1.1  ;;
	15) kappa_ghb=1.1  ; kappa_ght=1.1  ; kappa_ghz=0.9  ;;
    esac

    cat  powheg.input-save | sed "s/storeinfo_rwgt/compute_rwgt/ ; s/kappa_ghb.*/kappa_ghb $kappa_ghb/ ; s/kappa_ght.*/kappa_ght $kappa_ght/ ; s/kappa_ghz.*/kappa_ghz $kappa_ghz/ ; s/parallelstage/#parallelstage/ ; s/xgriditeration/#xgriditeration/; s/fastbtlbound/#fastbtlbound/" > powheg.input
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




