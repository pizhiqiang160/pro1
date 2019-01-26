#!/bin/bash

#   安装脚本 LNMP--N 
nginx_install(){
a=`yum repolist |tail -1 |awk '{print $2}'|sed 's/,//'`
if [ $a -ne 0  ];then
echo "YUM源正常"
else
echo "YUM源非正常状态,请修复YUM源之后再次运行"
exit 2
fi
id nginx ||useradd -s /sbin/nologin nginx
rpm -q gcc ||b="gcc"
rpm -q openssl-devel || b="openssl-devel $b"
rpm -q pcre-devel || b="pcre-devel $b"
[ -z $b ] || yum -y install $b

tar -xf nginx-1.12.2.tar.gz
cd nginx-1.12.2
./configure  --prefix=/usr/local/nginx --user=nginx --group=nginx --with-http_ssl_module --with-stream --with-http_stub_status_module
make
make install
ln -s /usr/local/nginx/sbin/nginx /usr/sbin/
}


#移除Nginx
nginx_remove(){
file1="/usr/local/nginx/conf /usr/local/nginx/html /usr/local/nginx/logs /usr/local/nginx/sbin"
file2="/mnt/nginx.bak"
tar -czPf /mnt/$file2 $file1
rm -rf $file1
echo "Nginx已经备份归档文件$file2,程序文件已删除"
}


jindu(){
while :
do
echo -e "\033[45m \033[0m"
done
}

install_m(){

}

install_p(){

}

#脚本开始部分
if [ ! -e /usr/local/nginx/sbin/nginx ];then
echo "Nginx未安装,即将安装Nginx!"

#安装nginx
nginx_install

fi
[ $# -eq 0 ]||i=$1
case $i in
"start")
	/usr/local/nginx/sbin/nginx 
	echo "服务已启动";;
"stop")
	/usr/local/nginx/sbin/nginx -s stop
	echo "服务已停止";;
"restart")
	/usr/local/nginx/sbin/nginx 
	/usr/local/nginx/sbin/nginx -s stop 
	echo "服务已重新启动";;
"status")
	netstat -ntulp |grep nginx	
	if [ $? -eq 0 ];then
		echo "Nginx服务正则运行"
	else
		echo "Nginx服务未运行"
	fi;;
*)
	echo "请输入正确的参数(start,stop,restart,status)"
esac
