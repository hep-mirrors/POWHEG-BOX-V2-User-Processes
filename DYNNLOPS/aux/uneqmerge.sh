#!/bin/bash

#function exitmessage {
#echo " uneqmerge called with $narg arguments $file"
#echo "usage: uneqmerge.sh file"
#exit -1
#}

function check {
if ! [ -e $1 ]
then
    echo file $1 not found
    exitmessage
fi
}

narg=`echo $* | wc -w`

case $narg in
 1) file=$1 ;;
#*) exitmessage ;;
esac

#First change all the initial lines
sed -i 's/# ptZ_1_1107.2381 index  22/# ptZ_1107.2381 index  22/' $file
sed -i 's/# ptZ_1_1406.3660 index  75/# ptZ_1406.3660 index  75/' $file
sed -i 's/# yZ_1_1109.5141 index  27/# yZ_1109.5141 index  23/' $file
sed -i 's/# phistar_1_1211.6899 index  29/# phistar_1211.6899 index  24/' $file
sed -i 's/# ptW_1_1108.6308 index  33/# ptW_1108.6308 index  33/' $file
sed -i 's/# d0_1_1302.1415 index  41/# d0_1302.1415 index  34/' $file
sed -i 's/# d1_1_1302.1415 index  67/# d1_1302.1415 index  35/' $file
sed -i 's$# d1/d0_1_1302.1415 index  92$# d1od0_1302.1415 index  36$' $file
#Then remove empty spaces and extra index lines
for i in {2..100}; do
line=$(awk "/_"$i"_1107.2381/{ print NR; exit }" $file)
[[ -z "$line" ]] && break || sed -i "$((line-2)),${line}d" $file
done
for i in {2..100}; do
line=$(awk "/_"$i"_1109.5141/{ print NR; exit }" $file)
[[ -z "$line" ]] && break || sed -i "$((line-2)),${line}d" $file
done
for i in {2..100}; do
line=$(awk "/_"$i"_1211.6899/{ print NR; exit }" $file)
[[ -z "$line" ]] && break || sed -i "$((line-2)),${line}d" $file
done
for i in {2..100}; do
line=$(awk "/_"$i"_1108.6308/{ print NR; exit }" $file)
[[ -z "$line" ]] && break || sed -i "$((line-2)),${line}d" $file
done
for i in {2..100}; do
line=$(awk "/_"$i"_1302.1415/{ print NR; exit }" $file)
[[ -z "$line" ]] && break || sed -i "$((line-2)),${line}d" $file
done
for i in {2..100}; do
line=$(awk "/_"$i"_1302.1415/{ print NR; exit }" $file)
[[ -z "$line" ]] && break || sed -i "$((line-2)),${line}d" $file
done
for i in {2..100}; do
line=$(awk "/_"$i"_1302.1415/{ print NR; exit }" $file)
[[ -z "$line" ]] && break || sed -i "$((line-2)),${line}d" $file
done
for i in {2..100}; do
line=$(awk "/_"$i"_1406.3660/{ print NR; exit }" $file)
[[ -z "$line" ]] && break || sed -i "$((line-2)),${line}d" $file
done
