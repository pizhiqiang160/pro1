#!/bin/bash

a(){>~/host.txt
ip1=192.168.4.
for i in {51..58}
do
ssh-copy-id root@$ip1$i
echo "$ip1$i">>~/host.txt
done
}
a
pscp.pssh  -h ~/host.txt ~/virt.repo /etc/yum.repos.d/
pssh -i -h ~/host.txt yum repolist
