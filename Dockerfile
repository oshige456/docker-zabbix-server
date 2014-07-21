FROM    centos:centos6
MAINTAINER      oshige456
RUN     yum update -y
RUN     yum install httpd -y
RUN     yum install http://repo.zabbix.com/zabbix/2.2/rhel/6/x86_64/zabbix-release-2.2-1.el6.noarch.rpm -y
RUN     yum install zabbix-server -y

ADD    zabbix_server.conf /etc/zabbix/zabbix_server.conf
EXPOSE  10050
CMD     ["/usr/sbin/zabbix_server","-c","/etc/zabbix/zabbix_server.conf"]
