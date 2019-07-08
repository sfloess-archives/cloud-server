#!/bin/bash

sed -i "s/^search\ .*/search flossware\.com/" /etc/resolv.conf

/etc/init.d/rsyslog         start
/etc/init.d/cron            start
/etc/init.d/rpcbind         start
/etc/init.d/nto             start
/etc/init.d/postfix         start
/etc/init.d/inetutils-inetd start
/etc/init.d/nfs-common      start
/etc/init.d/nis             start
/etc/init.d/ssh             start
/etc/init.d/cobblerd        start
/etc/init.d/apache2         start
#/etc/init.d/puppet-master   start
/etc/init.d/tftpd-hpa       start

mount -a

mkdir -p /mnt/admin-ap/etc
mkdir -p /mnt/admin-ap/home
mkdir -p /mnt/admin-ap/backups
mkdir -p /mnt/admin-ap/media
mkdir -p /mnt/admin-ap/nas
mkdir -p /mnt/admin-ap/shared
mkdir -p /mnt/admin-ap/root

mkdir -p /mnt/redhat-laptop/etc
mkdir -p /mnt/redhat-laptop/home
mkdir -p /mnt/redhat-laptop/opt
mkdir -p /mnt/redhat-laptop/root
mkdir -p /mnt/redhat-laptop/usb

mount admin-ap:/etc           /mnt/admin-ap/etc
mount admin-ap:/home          /mnt/admin-ap/home
mount admin-ap:/opt/backups   /mnt/admin-ap/backups
mount admin-ap:/opt/media     /mnt/admin-ap/media
mount admin-ap:/opt/nas       /mnt/admin-ap/nas
mount admin-ap:/opt/shared    /mnt/admin-ap/shared
mount admin-ap:/root          /mnt/admin-ap/root

mount redhat-laptop:/etc      /mnt/redhat-laptop/etc
mount redhat-laptop:/home     /mnt/redhat-laptop/home
mount redhat-laptop:/opt      /mnt/redhat-laptop/opt
mount redhat-laptop:/root     /mnt/redhat-laptop/root

