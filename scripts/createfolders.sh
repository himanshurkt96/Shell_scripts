#!/bin/bash

if [ $# -le 2 ]
  then
      echo "Usage:$0 <directory_name>,<Start_num>,<end_num>"
      exit 1
fi

dir_name=$1
start_no=$2
end_no=$3

for ((i=$start_no; i<=$end_no; i++))
    do
	dir="$dir_name$i"
	mkdir -p $dir
	echo "Created directory succefully"
done


echo "Finished creating directories"
