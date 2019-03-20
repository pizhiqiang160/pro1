#!/bin/bash
a="1 2 3 4 5 6 7 8 9 10 11 12"
num1=`echo "$a" |awk '{print NF}'`  
for i in `seq $num1`
do
let k=${num1}-$i+1
let sj=$RANDOM*$k/32768+1
b=$(echo $a |awk -v var1=$sj '{print $var1}')
echo -e "${i}\t-->$b"
a=${a/$b/}
sleep 5
done
