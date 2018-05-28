#! /bin/sh

postconf -e mydomain=$DOMAIN
postconf -e myorigin=$DOMAIN
postconf -e myhostname=$HOSTNAME
postconf -e mynetworks="127.0.0.0/8 192.168.0.0/16 10.0.0.0/8 172.16.0.0/12"
/usr/lib/postfix/post-install meta_directory=/etc/postfix create-missing
/usr/lib/postfix/master &
rm /var/run/rsyslogd.pid
exec /usr/sbin/rsyslogd -n
