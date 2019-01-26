#!/bin/bash
if [ -e /dev/sdb1 ];then
	df /root/aaa | grep aaa$ >/dev/null
	if [ $? -eq 1 ];then
		mount -t ntfs-3g /dev/sdb1 /root/aaa
	fi		
else
	echo '请插入U盘' >&2
	exit 2
fi
if [ $# -eq 1 ];then
	if [ $1 -eq 1 ];then
		\cp -uvr /root/bbb /root/aaa
	fi
else
	echo '请输入参数1进行复制' >&2
	exit 3
fi

