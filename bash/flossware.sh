#!/bin/sh

# Script to execute as the root user at boot time.
# You can loose your data or make the system inaccessible
# if using the wrong commands. You have been warned!
 
exec >> /var/log/user.log 2>&1

case "$1" in
	start)
		echo "Starting $0"
                /mnt/md0/root/Development/github/sfloess/alt-f/bash/bootup.sh /root/Development/github/sfloess/alt-f/bash/startup.sh	
		;;
	stop)
	      	echo "Stopping $0"
                debian -chroot /root/Development/github/sfloess/alt-f/bash/shutdown.sh
		;;
esac
