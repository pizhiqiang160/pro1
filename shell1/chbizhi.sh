#!/bin/bash
ch1() {
cd /etc/dconf/db/local.d
mkdir backup
a=`ls .`
a=${a/backup/}
mv $a backup
dconf updatels
}

f1() {
ip=176.52.8.
for i in {1..254}
do
ping -c 1 -W 1000 $ip$i
[ $? -eq 0 ] && f1a="$f1a $ip$i"
done

for i in $f1a
do
telnet $i 21
[ $? -eq 0 ] && echo >>/tmp/t1.txt
done
}

f1
