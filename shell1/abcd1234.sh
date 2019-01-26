#!/bin/bash
a="皮志强 朱冬冬 黄科 陈志红 李团兵 姜一炜 宋贺 伍小龙 尹杨陈 杨荣 刘初杰 李偃文"
#d=(0 0 0 0 0 0 0 0 0 0 0 0)
#c=0
#for i in ${a[@]}
for i in `seq 12`
do
let k=13-$i
let sj=$RANDOM*$k/32768+1

b=$(echo $a |awk 'BEGIN{var1="'"$sj"'"}{print $var1}')
echo -e "${i}\t-->$b"
a=${a/$b/}
#sleep 2
done

klll000(){
while [ $c -lt 12 ] 
do
i=$[RANDOM*12/32768]
[ ${d[i]} -gt 0 ]&& continue ||let d[$i]++
echo 第$((++b))个为${a[i]} 
let c++
done
}
