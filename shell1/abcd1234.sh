#!/bin/bash
#trap "" INT 
#g=$1
#g=${g:-姜一炜}  
#d=(0 0 0 0 0 0 0 0 0 0 0 0) 

#for j in {1..10000}  
#do  
a="皮志强 朱冬冬 黄科 陈志红 李团兵 宋贺 姜一炜 伍小龙 尹杨陈 杨荣 刘初杰 李偃文"

#c=0
#for i in ${a[@]}

for i in `seq 12`
do
let k=13-$i
let sj=$RANDOM*$k/32768+1

b=$(echo $a |awk 'BEGIN{var1="'"$sj"'"}{print $var1}')
echo -e "${i}\t-->$b"
a=${a/$b/}
sleep 5
#[ $b ==  $g ] && let d[i-1]++

done

#显示进度信息
#jindu=`echo "scale=2;$j/100 " | bc `
#echo -en "\r$jindu%"
#echo scale=4 $j/10000.00 | bc
#done

#echo "${d[*]}"


klll000(){
while [ $c -lt 12 ] 
do
i=$[RANDOM*12/32768]
[ ${d[i]} -gt 0 ]&& continue ||let d[$i]++
echo 第$((++b))个为${a[i]} 
let c++
done
}
