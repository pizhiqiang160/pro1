#!/bin/bash



setip1(){
ip1=`ifconfig eth0 |sed -n '2p' |awk 'OFS=","{print $2,$4}'`
nmcli connection modify eth0 ipv4.method manual ipv4.addresses $ip1 connection.autoconnect yes
nmcli connection up eth0
hostname mysql
hostname >/etc/hostname
echo "ip设置完成"
}

a()
{
#无密码验证登陆，人机交互
list=`seq 52 56`
id=`ifconfig eth0|sed -n '2p' |awk '{print $2}' |awk -F. '{print $NF}'`
list2=${list/$id/}
ip1=192.168.4.

[ ! -f '/root/.ssh/id_rsa' ] && ssh-keygen -N '' -f /root/.ssh/id_rsa
for i in $list2
do
ssh-copy-id $ip1$i:
done
>/tmp/host.txt
for i in {51..56}
do
echo "192.168.4.$i" >>/tmp/host.txt
done
if rpm -qa pssh* ; then
wget http://176.52.8.204/pssh-2.3.1-5.el7.noarch.rpm -O /tmp/pssh-2.3.1-5.el7.noarch.rpm 
fi
pssh -i -p 2 -h /tmp/host.txt 'rm -rf /var/lib/mysql/{*.0000*,*.index,*.info};systemctl restart mysqld'

stat -c %G /var/lib/mysql
##########             以下为SQL执行命令
# 第一台主库执行（192.168.4.52）
#grant replication slave on *.* to lx@'%' identdified by '123456';
# 其他从库执行 （192.168.4.53-56）
#change master to master_host="192.168.4.52",master_user="lx",master_password="123456",master_log_file="s1.000001",master_log_pos=435;
}

#redis
redis1(){
systemctl disable mysqld
systemctl stop mysqld
rpm -q gcc ||yum -y install gcc
if [ -f '/root/redis-4.0.8.tar.gz'  ] ;then
tar -xf /root/redis-4.0.8.tar.gz
cd redis-4.0.8
make
make install
fi
}

	if [ $# -ne 0 ];then
		for i in $*
			do
				$i
			done
	else 
		redis1
fi


/root/redis-4.0.8/utils/install_server.sh <<EOF
\n
\n
\n
\n
\n
EOF



echo 0000
