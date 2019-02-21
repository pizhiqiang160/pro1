#!/bin/bash

#无密码验证登陆，人机交互
list=`seq 52 56`
id=`ifconfig eth0|sed -n '2p' |awk '{print $2}' |awk -F. '{print $NF}'`
list2=${list/$id/}
ip1=192.168.4.
ssh-keygen -N '' -f /root/.ssh/id_rsa
for i in $list2
do
ssh-copy-id $ip1$i:
done



cd /var/lib/mysql
rm -rf *.0000* *.index *.info
systemctl restart mysqld
stat -c %G /var/lib/mysql


##########             以下为SQL执行命令
# 第一台主库执行（192.168.4.52）
#grant replication slave on *.* to lx@'%' identdified by '123456';
# 其他从库执行 （192.168.4.53-56）
#change master to master_host="192.168.4.52",master_user="lx",master_password="123456",master_log_file="s1.000001",master_log_pos=435;
