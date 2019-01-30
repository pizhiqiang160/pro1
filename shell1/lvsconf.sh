#!/bin/bash


[ -n $1 ] && ip=$1 ||read -p "请输入IP地址" ip
while :
do
[[ $ip =~ \(\[0-9\]\{1,3\}\.\)\{3\}\[0-9\]\{3\} ]] && read -p "请输入正确的ip地址" ip

done

#忽略ip地址与环回地址相同的arp广播包,并且环回地址不发送ARP广播包
Files(){
	mv -n /etc/sysctl.conf /etc/sysctl.conf.bak
	echo 'net.ipv4.conf.all.arp_ignore=1
	net.ipv4.conf.lo.arp_ignore=1
	net.ipv4.conf.lo.arp_announce=2
	net.ipv4.conf.all.arp_announce=2' >/etc/sysctl.conf 
	sysctl -p
}

#增加lo环回地址,需指定IP地址
Addlo(){
cd /etc/sysconfig/network-scripts/
a=$1
ftmp=$(
awk -F= 'BEGIN{i="'"$a"'"}
$1!~/#/{
switch($1) {
case "DEVICE": print $1"="$2":0";break;
case "NAME": print $1"="$2":0";break;
case "BROADCAST": print $1"="i;break;
case "IPADDR": print $1"="i;break;
case "NETWORK": print $1"="i;break;
case "NETMASK": print $1"=255.255.255.255";break;
case "ONBOOT": print $1"="$2;break;
#default: ;break;
}
}' ifcfg-lo
)
echo "$ftmp" >ifcfg-lo:0
systemctl restart network
}
Addlo $ip
