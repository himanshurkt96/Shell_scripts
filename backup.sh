#!/bin/bash

src_dir='/home/ubuntu/scripts'
backup_dir='/home/ubuntu/backup'

backup_name='backup_$(date %y-%m-%d %H-%m-%s).tar.gz).tar.gz'

# check if directory exist or not

if [ ! -d "$backup_dir" ]
   then
	 mkdir -p "$backup_dir"
fi

tar -cvzf "$backup_dir/$backup_name" "$src_dir"

if [ $? -eq 0 ]
   then
	 echo "Backup Successful"
   else
	 echo "Backup Unsuccesseful"
fi


