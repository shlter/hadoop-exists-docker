#!/bin/bash
#
echo "$(sed  '1s/^/#/' /etc/hosts)" > /etc/hosts
echo "$(sed  '35s/^#//' /etc/ssh/ssh_config)" > /etc/ssh/ssh_config
echo "$(sed  '35s/ask/no/' /etc/ssh/ssh_config)" > /etc/ssh/ssh_config
echo -e "192.168.40.10 hadoop0\n192.168.40.20 hadoop1\n192.168.40.30 hadoop2" >>/etc/hosts 
echo -e "export JAVA_HOME=/usr/local/jdk1.8\nexport PATH=\$PATH:\$JAVA_HOME/bin\n" >>/etc/profile
echo -e "export HADOOP_HOME=/usr/local/hadoop\nexport PATH=\$PATH:\$HADOOP_HOME/bin\nexport PATH=\$PATH:\$HADOOP_HOME/sbin" >>/etc/profile
source /etc/profile
