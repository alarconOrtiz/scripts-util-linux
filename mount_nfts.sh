#!/bin/bash
#move to /Volumes and read directories.
DIR_VOL  = "/Volumes/"
DIR_LIST ="$(ls $DIR_VOL)"
UUID_HD  =""
MOUNT_HD =""
PATH_DEV =""

for i in $DIR_LIST; do
	#compare with normal dirs like Macintosh HD Preboot
	if [ $i != "Macintosh" ] && [ $i != "HD" ] && [ $i != "Preboot" ]; then
		#to get UUID from your HD drive
		DISK_INFO=echo $(sudo diskutil info $i)
		if [ -z "DISK_INFO" ]; then
			echo Hard Drive not found
			echo "$(exit -1)"
		else #DISK_INFO with value so time to proccess info
			
		fi		
	fi
done

#add line to get permisions
#echo UUID=uuid_HD none ntfs rw>> /etc/fstab

