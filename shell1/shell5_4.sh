#!/bin/bash
export a=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
export i=1
export pass=""
ab(){
pass="";i=1
while :
do
b=$[RANDOM%63];
#echo -n "${a:b:1}"
#sleep 0.5
pass=${pass}${a:b:1}
let i++
[ "$i" -gt "8" ] && break 

done
echo "$pass"
}

aabb1(){
for j in `seq 5`
do
useradd user$j
ab
echo "$pass" |passwd --stdin user$j
done
}

function ex5 {
m=`ls /root/*.$1`
for k in $m
do
b=${k%.*}
b=$b.$2
mv $k $b
done
}

function ex6 {
read -p "输入一个整数" a
plus=0
for l in `seq ${a:-1}`
do
let plus+=l
done
echo "${plus}"
}

sshex(){
expect << EOF
spawn ssh -o StrictHostKeyChecking=no root@172.25.0.11
expect "password:" { send "redhat\r" }
expect "#" { send "touch 123.txt\r" }
expect "#" { send "exit\r" }
EOF
}
echo "第5部分SHELL脚本第4天"

