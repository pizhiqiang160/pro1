#!/bin/bash
if [ $# -eq 0 ];then
	sh $0 '&' && exit
elif [$1 != '&' ];then
	exit 
fi
while inotifywait -rqq /tools
do
	
done
