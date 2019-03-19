#!/bin/bash
a="皮志强 朱冬冬 黄科 陈志红 李团兵 宋贺 姜一炜 伍小龙 尹杨陈 杨荣 刘秋杰 李偃文"
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
